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
    await FlutterBluePlus.startScan(timeout: Duration(seconds: 15));
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
    final sub = FlutterBluePlus.scanResults.listen((results) {
      if (results.isNotEmpty) {
        logger.d(results.length);
      }
    }, onError: (e) => {logger.d(e)});
    state = state.copyWith(scanResultsSub: sub);
  }

  void stopScanResultsListener() {
    state.scanResultsSub?.cancel();
    state = state.copyWith(scanResultsSub: null);
  }
}
