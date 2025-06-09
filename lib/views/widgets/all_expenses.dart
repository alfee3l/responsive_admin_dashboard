import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/models/all_expenses__item_model.dart';
import 'package:responsive_admin_dashboard/utils/app_images.dart';
import 'package:responsive_admin_dashboard/views/widgets/all_expenses_header.dart';
import 'package:responsive_admin_dashboard/views/widgets/all_expenses_item.dart';
import 'package:responsive_admin_dashboard/views/widgets/all_expenses_item_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16,),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
