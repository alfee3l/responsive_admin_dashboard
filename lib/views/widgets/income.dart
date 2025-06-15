import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';
import 'package:responsive_admin_dashboard/views/widgets/custom_background_container.dart';
import 'package:responsive_admin_dashboard/views/widgets/income_Section_header.dart';
import 'package:responsive_admin_dashboard/views/widgets/income_chart.dart';
import 'package:responsive_admin_dashboard/views/widgets/income_details.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {    
    return CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Expanded(child: IncomeChart()),
               Expanded(child: IncomeDetails()),
            ],
          )
        ],
      ),
    );
  }
}


