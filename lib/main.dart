import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import './ble_scan.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSupported = ref.watch(bleAdvertiserProvider).isSupported;
    final text = isSupported ? "Yes" : "No";
    return MaterialApp(
      home: Scaffold(body: Center(child: Text(text))),
    );
  }
}
