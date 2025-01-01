import 'package:flutter/material.dart';

class TabletDashboard extends StatelessWidget {
  const TabletDashboard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tablet Dashboard'),
      ),
      body: const Center(
        child: Text('Tablet Dashboard'),
      ),
    );
  }
}
