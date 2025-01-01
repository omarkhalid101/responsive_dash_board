import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/desktop_dashboard.dart';
import 'package:responsive_dash_board/views/mobile_dashboard.dart';
import 'package:responsive_dash_board/views/tablet_dashboard.dart';

void main() {
  runApp(const ResponsiveDashboard());
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DashboardView(),
    );
  }
}

class DashboardView extends StatelessWidget {
  const DashboardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            return const MobileDashboard();
          } else if (constraints.maxWidth < 900) {
            return const TabletDashboard();
          } else {
            return const DesktopDashboard();
          }
        },
      ),
    );
  }
}
