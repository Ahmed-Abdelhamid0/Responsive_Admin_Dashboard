import 'package:admin_dashboard/models/drawer_model.dart';
import 'package:admin_dashboard/utils/app_assets.dart';
import 'package:admin_dashboard/views/widgets/drawer_section/drawer_item.dart';
import 'package:flutter/material.dart';

class CustomDrawerItemsList extends StatefulWidget {
  const CustomDrawerItemsList({super.key,});


  @override
  State<CustomDrawerItemsList> createState() => _CustomDrawerItemsListState();
}

class _CustomDrawerItemsListState extends State<CustomDrawerItemsList> {
  final List<DrawerItemModel> drawerItems=const[
    DrawerItemModel(title: 'Dashboard', image: AppAssets.dashboard),
    DrawerItemModel(title: 'My Transaction', image: AppAssets.myTransactions),
    DrawerItemModel(title: 'Statistics', image: AppAssets.statistics),
    DrawerItemModel(title: 'Wallet Account', image: AppAssets.walletAccount),
    DrawerItemModel(title: 'My Investments', image: AppAssets.myInvestments),
  ];
  int itemNumber=0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context,index){
        return GestureDetector(
          onTap: (){
            if(itemNumber!=index){
              setState(() {
                itemNumber=index;
                print(itemNumber);
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: drawerItems[index],
              isActive: itemNumber == index,
            ),
          ),
        );
      },
    );
  }
}