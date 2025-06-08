import 'dart:typed_data';
import 'package:uuid/uuid.dart';
import 'package:flutter_ble_peripheral/flutter_ble_peripheral.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ble_scan.freezed.dart';
part 'ble_scan.g.dart';

// State class
@freezed
sealed class BleAdvertiserState with _$BleAdvertiserState {
  const factory BleAdvertiserState({
    @Default(false) bool isSupported,
    AdvertiseData? advertiseData,
    AdvertiseSetParameters? advertiseSetParameters,
    @Default(false) isAdvertising,
  }) = _BleAdvertiserState;
}

@riverpod
class BleAdvertiser extends _$BleAdvertiser {
  @override
  BleAdvertiserState build() {
    initPlatformState();
    return BleAdvertiserState();
  }

  Future<void> initPlatformState() async {
    final isSupported = await FlutterBlePeripheral().isSupported;
    state = state.copyWith(
      isSupported: isSupported,
      advertiseData: getAdvertiseData(),
      advertiseSetParameters: getAdvertiseSetParameters(),
    );
  }

  Future<void> requestPermissions(Function notify) async {
    final hasPermission = await FlutterBlePeripheral().hasPermission();
    switch (hasPermission) {
      case BluetoothPeripheralState.denied:
        notify("Requesting permission");
        await requestPermissions(notify);
        break;
      default:
        notify("Has permission");
        break;
    }
  }

  AdvertiseData getAdvertiseData({
    String uuid = "",
    String localName = "BLE Test",
    int manufacturerId = 12345,
  }) {
    if (uuid == "") {
      uuid = Uuid().v4();
    }
    final AdvertiseData data = AdvertiseData(
      serviceUuid: uuid,
      localName: localName,
      manufacturerId: manufacturerId,
      manufacturerData: Uint8List.fromList([1, 2, 3, 4, 5, 6]),
    );

    return data;
  }

  Future<void> changeAdvertiseDate({
    String localName = "BLE Test",
    int manufacturerId = 12345,
  }) async {
    if (state.isAdvertising) {
      await stopAdvertise();
    }
    final data = getAdvertiseData();
    state = state.copyWith(advertiseData: data);
  }

  // TODO: Implement some option
  AdvertiseSetParameters getAdvertiseSetParameters() {
    final AdvertiseSetParameters data = AdvertiseSetParameters();
    return data;
  }

  Future<BluetoothPeripheralState> _hasPermissions() async {
    final hasPermissions = await FlutterBlePeripheral().hasPermission();
    return hasPermissions;
  }

  Future<void> startAdvertise() async {
    await FlutterBlePeripheral().start(
      advertiseData: state.advertiseData ?? getAdvertiseData(),
      advertiseSetParameters: state.advertiseSetParameters,
    );
    state = state.copyWith(isAdvertising: true);
  }

  Future<void> stopAdvertise() async {
    await FlutterBlePeripheral().stop();
    state = state.copyWith(isAdvertising: false);
  }
}
