import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/views/widgets/all_expenses.dart';
import 'package:responsive_admin_dashboard/views/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_admin_dashboard/views/widgets/card_page_view.dart';
import 'package:responsive_admin_dashboard/views/widgets/custom_dot.dart';
import 'package:responsive_admin_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_admin_dashboard/views/widgets/dots_indicator.dart';
import 'package:responsive_admin_dashboard/views/widgets/my_card.dart';
import 'package:responsive_admin_dashboard/views/widgets/my_card_section.dart';
import 'package:responsive_admin_dashboard/views/widgets/quick_invoice.dart';
import 'package:responsive_admin_dashboard/views/widgets/transaction_history.dart';

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
          child: SingleChildScrollView(child: AllExpensesAndQuickInvoice()),
        ),
        SizedBox(width: 24,),
        Expanded(child: TransactionHistory()),
      ],
    );
  }
}
