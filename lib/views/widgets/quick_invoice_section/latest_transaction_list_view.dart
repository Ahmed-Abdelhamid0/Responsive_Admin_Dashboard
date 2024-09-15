import 'package:admin_dashboard/models/user_info_model.dart';
import 'package:admin_dashboard/utils/app_assets.dart';
import 'package:admin_dashboard/views/widgets/drawer_section/custom_list_tile.dart';
import 'package:flutter/material.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const List<UserInfoModel> userInfoModel= [
    UserInfoModel(image: AppAssets.avatar1, title: 'Ahmed Abo-Alkhair', subtitle: 'aabdulhamed363@gmail.com'),
    UserInfoModel(image: AppAssets.avatar2, title: 'Ahmed Abo-Alkhair', subtitle: 'aabdulhamed363@gmail.com'),
    UserInfoModel(image: AppAssets.avatar3, title: 'Ahmed Abo-Alkhair', subtitle: 'aabdulhamed363@gmail.com'),
  ];
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: userInfoModel.map((child) => IntrinsicWidth(
            child: UserInfoListTile(userInfoModel: child,))).toList(),
      ),
    );
  }
}
