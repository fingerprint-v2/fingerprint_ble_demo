import 'dart:async';
import './utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

part 'ble_scan.freezed.dart';
part 'ble_scan.g.dart';

@freezed
sealed class BleScannerState with _$BleScannerState {
  const factory BleScannerState({
    StreamSubscription<BluetoothAdapterState>? adaptorStateSub,
    StreamSubscription<List<ScanResult>>? scanResultsSub,
    @Default(false) bool isAdapterStateOn,
    @Default([]) List<ScanResult> scanResults,
    @Default(false) isScanning,
  }) = _BleScannerState;
}

@riverpod
class BleScanner extends _$BleScanner {
  @override
  BleScannerState build() {
    FlutterBluePlus.setLogLevel(LogLevel.verbose, color: true);

    return BleScannerState();
  }

  void startAdaptorStateListener() {
    // Check already listening
    if (state.adaptorStateSub != null) {
      logger.d("adaptorStateSub alreday exists");
      return;
    }

    final sub = FlutterBluePlus.adapterState.listen((
      BluetoothAdapterState adaptorState,
    ) {
      if (adaptorState == BluetoothAdapterState.on) {
        // Bluetooth is enabled, proceed with BLE operations
        state = state.copyWith(isAdapterStateOn: true);
      } else {
        // Bluetooth is off or in an error state, handle appropriately
        state = state.copyWith(isAdapterStateOn: false);
      }
    });

    state = state.copyWith(adaptorStateSub: sub);
  }

  void stopAdaptorStateListener() {
    state.adaptorStateSub?.cancel();
    state = state.copyWith(adaptorStateSub: null);
  }

  void startScan() async {
    if (state.isScanning) {
      logger.d("Already scanning...");
      return;
    }
    state = state.copyWith(isScanning: true);
    logger.d("Starting Scan");
    await FlutterBluePlus.startScan(timeout: Duration(seconds: 15));

    await FlutterBluePlus.isScanning.where((val) => val == false).first;
    state = state.copyWith(isScanning: false);
    logger.d("Scanning stop");
  }

  void stopScan() async {
    await FlutterBluePlus.stopScan();
    state = state.copyWith(isScanning: false);
  }

  void resetScanResults() {
    state = state.copyWith(scanResults: []);
  }

  void startScanResultsListener() {
    // Check if ble is ready
    // if (!state.isAdapterStateOn) {
    //   logger.d("BLE is not ready");
    //   return;
    // }

    // Check already listening
    if (state.scanResultsSub != null) {
      logger.d("scanResultsSub alreday exists");
      return;
    }
    final sub = FlutterBluePlus.onScanResults.listen((results) {
      String pattern = "ffff";
      if (results.isNotEmpty) {
        List<ScanResult> filteredResults = results.where((r) {
          List<Guid> serviceUuids = r.advertisementData.serviceUuids;
          if (serviceUuids.isNotEmpty) {
            // return true;
            String uuid = serviceUuids[0].str;
            return uuid.startsWith(pattern);
          } else {
            return false;
          }
        }).toList();

        List<ScanResult> allResults = [
          ...state.scanResults,
          ...filteredResults.where(
            (r) => !state.scanResults.any(
              (old) => old.device.remoteId == r.device.remoteId,
            ),
          ),
        ];
        logger.d("Total devices found: ${allResults.length}");
        // allResults.sort((a, b) => b.rssi.compareTo(a.rssi));
        allResults.sort((a, b) => b.timeStamp.compareTo(a.timeStamp));

        state = state.copyWith(scanResults: allResults);

        // ScanResult r = results.last; // the most recently found device
        // logger.d(r);
        // state = state.copyWith(scanResults: [...state.scanResults, r]);
      }
    }, onError: (e) => {logger.d(e)});
    state = state.copyWith(scanResultsSub: sub);
  }

  void stopScanResultsListener() {
    state.scanResultsSub?.cancel();
    state = state.copyWith(scanResultsSub: null);
  }
}
