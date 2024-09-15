import 'package:admin_dashboard/models/drawer_model.dart';
import 'package:admin_dashboard/views/widgets/drawer_section/active_drawer_item.dart';
import 'package:admin_dashboard/views/widgets/drawer_section/disactive_drawer_item.dart';

import 'package:flutter/material.dart';


class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return  isActive ? ActiveDrawerItem(
      drawerItemModel: drawerItemModel,
    ):DisActiveItem(drawerItemModel: drawerItemModel);
  }
}



