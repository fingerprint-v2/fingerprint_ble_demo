import 'package:fingerprint_ble_demo/features/ble_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScan extends ConsumerStatefulWidget {
  const HomeScan({super.key});
  @override
  ConsumerState<HomeScan> createState() => _HomeScanState();
}

class _HomeScanState extends ConsumerState<HomeScan> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(bleScannerProvider.notifier).startAdaptorStateListener();
      ref.read(bleScannerProvider.notifier).startScanResultsListener();
    });
  }

  @override
  Widget build(BuildContext context) {
    final isScanning = ref.watch(bleScannerProvider).isScanning;
    final textIsScanning = isScanning ? "Scanning" : "Not Scanning";

    final List<ScanResult> scanResults = ref
        .watch(bleScannerProvider)
        .scanResults;
    final List<String> uuids = scanResults
        .where(
          (e) => e.advertisementData.serviceUuids.isNotEmpty,
        ) // Avoids index errors
        .map(
          (e) => e.advertisementData.serviceUuids[0].str,
        ) // If serviceUuids[0] is a String
        .toList();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Text(textIsAdapterStateOn),
        Column(children: uuids.map((str) => Text(str)).toList()),
        ElevatedButton(
          onPressed: () => {ref.read(bleScannerProvider.notifier).startScan()},
          child: Text("Start Scan"),
        ),
        ElevatedButton(
          onPressed: () => {ref.read(bleScannerProvider.notifier).stopScan()},
          child: Text("Stop Scan"),
        ),

        ElevatedButton(
          onPressed: () => {
            ref.read(bleScannerProvider.notifier).resetScanResults(),
          },
          child: Text("Reset"),
        ),

        Text(textIsScanning),
      ],
    );
  }
}
