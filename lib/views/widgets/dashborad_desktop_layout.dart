import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/views/widgets/all_expenses.dart';
import 'package:responsive_admin_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_admin_dashboard/views/widgets/quick_invoice.dart';

class DashBoradDesktopLayoutView extends StatelessWidget {
  const DashBoradDesktopLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              AllExpenses(),
              SizedBox(height: 48,),
              QuickInvoice(),
            ],
          ),
        ), 
      ],
    );
  }
}
