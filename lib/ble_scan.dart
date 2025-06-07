import 'package:flutter_ble_peripheral/flutter_ble_peripheral.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'ble_scan.freezed.dart';
part 'ble_scan.g.dart';

@riverpod
class BleAdvertiser extends _$BleAdvertiser {
  @override
  BleAdvertiserState build() {
    initPlatformState();
    return BleAdvertiserState(isSupported: false, isLoading: true);
  }

  Future<void> initPlatformState() async {
    final isSupported = await FlutterBlePeripheral().isSupported;
    state = state.copyWith(isSupported: isSupported);
  }
}

// State class
// Don't understand why I need to use abstract class here
@freezed
abstract class BleAdvertiserState with _$BleAdvertiserState {
  const factory BleAdvertiserState({
    required bool isSupported,
    required bool isLoading,
  }) = _BleAdvertiserState;
}
