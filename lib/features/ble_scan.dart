import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

part 'ble_scan.freezed.dart';
part 'ble_scan.g.dart';

@freezed
sealed class BleScannerState with _$BleScannerState {
  const factory BleScannerState() = _BleScannerState;
}

@riverpod
class BleScanner extends _$BleScanner {
  @override
  BleScannerState build() {
    FlutterBluePlus.setLogLevel(LogLevel.verbose, color: true);

    return BleScannerState();
  }

  void scanBle() {
    var subscription = FlutterBluePlus.adapterState.listen((
      BluetoothAdapterState state,
    ) {
      print(state);
      if (state == BluetoothAdapterState.on) {
        // Bluetooth is enabled, proceed with BLE operations
      } else {
        // Bluetooth is off or in an error state, handle appropriately
      }
    });
  }
}
