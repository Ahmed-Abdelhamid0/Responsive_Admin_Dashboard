import 'package:admin_dashboard/models/drawer_model.dart';
import 'package:admin_dashboard/models/user_info_model.dart';
import 'package:admin_dashboard/utils/app_assets.dart';
import 'package:admin_dashboard/views/widgets/drawer_section/custom_drawer_items_list.dart';
import 'package:admin_dashboard/views/widgets/drawer_section/custom_list_tile.dart';
import 'package:admin_dashboard/views/widgets/drawer_section/disactive_drawer_item.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
                SliverToBoxAdapter(
                  child: UserInfoListTile(
                    userInfoModel: UserInfoModel(image: AppAssets.avatar3, title: 'Ahmed Abo-Alkhair', subtitle: 'aabdulhamed363@gmail.com'),
                  ),
                ),
                SliverToBoxAdapter(child: SizedBox(height: 8)),
                CustomDrawerItemsList(),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      Expanded(child: SizedBox(height: 20)),
                      DisActiveItem(
                        drawerItemModel: DrawerItemModel(
                          title: 'Setting system',
                          image: AppAssets.settings,
                        ),
                      ),
                      DisActiveItem(
                        drawerItemModel: DrawerItemModel(
                          title: 'Logout account',
                          image: AppAssets.logout,
                        ),
                      ),
                      SizedBox(height: 48),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}




