
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_dashboard/models/drawer_item_model.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
     leading: SvgPicture.asset(drawerItemModel.image),
     title: Text(drawerItemModel.title,style: AppStyles.styleRegular16(context),),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
     leading: SvgPicture.asset(drawerItemModel.image),
     title: FittedBox(
      alignment: AlignmentDirectional.centerStart,
      fit: BoxFit.scaleDown,
      child: Text(drawerItemModel.title,style: AppStyles.styleBold16(context),)),
     trailing: Container(
      width: 3.7,
     
      decoration: BoxDecoration(
        color: Color(0xff4EB7F2),
      ),
     ),
    );
  }
}