import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/views/widgets/custom_background_container.dart';
import 'package:responsive_admin_dashboard/views/widgets/income_Section_header.dart';
import 'package:responsive_admin_dashboard/views/widgets/income_section_body.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        
        children: [
          IncomeSectionHeader(), 
          IncomeSectionBody()
          ]),
    );
  }
}
