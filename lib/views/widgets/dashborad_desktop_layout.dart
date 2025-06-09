import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/views/widgets/all_expenses.dart';
import 'package:responsive_admin_dashboard/views/widgets/custom_drawer.dart';

class DashBoradDesktopLayoutView extends StatelessWidget {
  const DashBoradDesktopLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          child: Column(children: [Expanded(flex: 2, child: AllExpenses())]),
        ),
      ],
    );
  }
}
