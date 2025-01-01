import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/quick_invoice.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: CustomDrawer(),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
            children: [
              Expanded(child: AllExpenses()),
              SizedBox(
                height: 20,
              ),
              Expanded(child: QuickInvoice()),
            ],
          ),
        ),
      ],
    );
  }
}
