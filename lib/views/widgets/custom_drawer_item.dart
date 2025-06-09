import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/models/drawer_item_model.dart';
import 'package:responsive_admin_dashboard/views/widgets/active_and_inactive_drawer_item.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.drawerItemModel, required this.isActive});
final DrawerItemModel drawerItemModel;
final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive?  ActiveDrawerItem(drawerItemModel: drawerItemModel,): InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
