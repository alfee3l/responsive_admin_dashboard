import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';
import 'package:responsive_admin_dashboard/views/widgets/custom_background_container.dart';
import 'package:responsive_admin_dashboard/views/widgets/custom_text_field.dart';
import 'package:responsive_admin_dashboard/views/widgets/latest_transaction.dart';
import 'package:responsive_admin_dashboard/views/widgets/quick_invoice_header.dart';
import 'package:responsive_admin_dashboard/views/widgets/title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
           Divider(height: 48,),
         TitleTextField(title: 'Customer name', hint: 'Type customer name',),
        ],
      ),
    );
  }
}
