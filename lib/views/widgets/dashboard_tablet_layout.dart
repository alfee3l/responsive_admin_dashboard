import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/views/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_admin_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_admin_dashboard/views/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_admin_dashboard/views/widgets/income.dart';
import 'package:responsive_admin_dashboard/views/widgets/my_crad_and_transaction_history.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Expanded(child: CustomDrawer()),
      SizedBox(width: 32,),
      Expanded(
        flex: 3,
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: DashboardMobileLayout(),
        )),
         SizedBox(width: 32,),
      ],
    );
  }
}
