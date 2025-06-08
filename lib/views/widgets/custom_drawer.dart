import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_images.dart';
import 'package:responsive_admin_dashboard/views/widgets/user_info_list.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     color: Colors.white,
     child: Column(
      children: [ 
        UserInfoList(image: Assets.imagesAvatar3, title: 'Lekan Okeowo', subtitle: 'demo@gmail.com'),
      ],
     ),
    );
  }
}