import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/models/user_info_model.dart';
import 'package:responsive_admin_dashboard/utils/app_images.dart';
import 'package:responsive_admin_dashboard/views/widgets/user_info_list.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) => IntrinsicWidth(child: UserInfoList(userInfoModel: e)))
            .toList(),
      ),
    );
  }
}
