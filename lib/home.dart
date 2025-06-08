import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import './ble_scan.dart';
import './utils.dart';

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
    // final isSupported = ref.watch(bleAdvertiserProvider).isSupported;
    // final text = isSupported ? "Yes" : "No";

    final uuid =
        ref.watch(bleAdvertiserProvider).advertiseData?.serviceUuid ?? "None";

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
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
      ],
    );
  }
}
