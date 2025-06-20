

import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/models/item_details_model.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});
  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: OvalBorder(),
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16(context).copyWith(),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16(context).copyWith(color: const Color(0xFF208CC8)),
      ),
    );
  }
}
