import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/views/widgets/all_expenses.dart';
import 'package:responsive_admin_dashboard/views/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_admin_dashboard/views/widgets/card_page_view.dart';
import 'package:responsive_admin_dashboard/views/widgets/custom_dot.dart';
import 'package:responsive_admin_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_admin_dashboard/views/widgets/dots_indicator.dart';
import 'package:responsive_admin_dashboard/views/widgets/income.dart';
import 'package:responsive_admin_dashboard/views/widgets/my_card.dart';
import 'package:responsive_admin_dashboard/views/widgets/my_card_section.dart';
import 'package:responsive_admin_dashboard/views/widgets/my_crad_and_transaction_history.dart';
import 'package:responsive_admin_dashboard/views/widgets/quick_invoice.dart';
import 'package:responsive_admin_dashboard/views/widgets/transaction_history.dart';

class DashboardDesktopLayoutView extends StatelessWidget {
  const DashboardDesktopLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: AllExpensesAndQuickInvoice(),
                      ),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: 40),
                          MyCardAndTransactionHistory(),
                          SizedBox(height: 24),
                          Expanded(child: Income()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
