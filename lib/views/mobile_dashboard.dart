import 'package:flutter/material.dart';

class MobileDashboard extends StatelessWidget {
  const MobileDashboard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile  Dashboard'),
      ),
      body: const Center(
        child: Text('Mobile Dashboard'),
      ),
    );
  }
}
