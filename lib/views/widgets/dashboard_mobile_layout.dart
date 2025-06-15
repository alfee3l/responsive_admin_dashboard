
import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/views/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_admin_dashboard/views/widgets/income.dart';
import 'package:responsive_admin_dashboard/views/widgets/my_crad_and_transaction_history.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoice(),
           SizedBox(height: 24,),
           MyCardAndTransactionHistory(),
            SizedBox(height: 24,),
           Income()
        ],
      ),
    );
  }
}