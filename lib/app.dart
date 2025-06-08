import 'package:fingerprint_ble_demo/features/ble_scan.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'features/ble_advertise.dart';
import 'features/utils.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});
  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(bleAdvertiserProvider.notifier)
          .requestPermissions(showSnackBarFactory(context));
    });
  }

  @override
  Widget build(BuildContext context) {
    final isSupported = ref.watch(bleAdvertiserProvider).isSupported;
    final textIsSupported = isSupported ? "BLE Supported" : "BLE Not Supported";
    final isAdvertising = ref.watch(bleAdvertiserProvider).isAdvertising;
    final textIsAdvertising = isAdvertising ? "Advertising" : "Not Advertising";
    final uuid =
        ref.watch(bleAdvertiserProvider).advertiseData?.serviceUuid ?? "None";

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(textIsSupported),
        Text(textIsAdvertising),
        Text(uuid),
        ElevatedButton(
          onPressed: () => {
            ref.read(bleAdvertiserProvider.notifier).startAdvertise(),
          },
          child: Text("ON"),
        ),
        ElevatedButton(
          onPressed: () => {
            ref.read(bleAdvertiserProvider.notifier).stopAdvertise(),
          },
          child: Text("OFF"),
        ),

        ElevatedButton(
          onPressed: () => {
            ref.read(bleAdvertiserProvider.notifier).changeAdvertiseDate(),
          },
          child: Text("Change UUID"),
        ),

        ElevatedButton(
          onPressed: () => {ref.read(bleScannerProvider.notifier).scanBle()},
          child: Text("Scan"),
        ),
      ],
    );
  }
}
