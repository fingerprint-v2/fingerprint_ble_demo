import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'home_advertise.dart';
import 'home_scan.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('BLE Demo'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: 'Advertise'),
                Tab(icon: Icon(Icons.star), text: 'Scan'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: HomeAdvertise()),
              Center(child: HomeScan()),
            ],
          ),
        ),
      ),
    );
  }
}
