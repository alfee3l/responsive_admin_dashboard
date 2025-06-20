import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/views/widgets/custom_background_container.dart';
import 'package:responsive_admin_dashboard/views/widgets/latest_transaction.dart';
import 'package:responsive_admin_dashboard/views/widgets/quick_invoice_form.dart';
import 'package:responsive_admin_dashboard/views/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start  ,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(height: 48, color: Color(0xffF1F1F1)),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
