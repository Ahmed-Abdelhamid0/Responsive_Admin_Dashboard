import 'package:admin_dashboard/models/all_expenses_item_model.dart';
import 'package:admin_dashboard/utils/app_assets.dart';
import 'package:admin_dashboard/views/widgets/all_expenses_section/all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesListView extends StatefulWidget {
  const AllExpensesListView({super.key});



  @override
  State<AllExpensesListView> createState() => _AllExpensesListViewState();
}

class _AllExpensesListViewState extends State<AllExpensesListView> {
  final  List<AllExpensesItemModel> expensesItems=const[
     AllExpensesItemModel(
      image: AppAssets.balance,
      title: 'Balance',
      date: 'April 2022',
      price: '\$20,129',
    ),
    AllExpensesItemModel(
      image: AppAssets.incomes,
      title: 'Income',
      date: 'April 2022',
      price: '\$20,129',
    ),
    AllExpensesItemModel(
      image: AppAssets.expenses,
      title: 'Expenses',
      date: 'April 2022',
      price: '\$20,129',
    ),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: expensesItems.asMap().entries.map((child) {
       var item=child.value;
       int index=child.key;
       if(index==1){
         return Expanded(
             child: GestureDetector(
               onTap: (){
                 setState(() {
                   selectedIndex = index;
                 });
               },
               child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 12),
                 child:  AllExpensesItem(allExpensesItemModel: item,isSelected: selectedIndex==index),
               ),
             ),
         );
       }else{
         return Expanded(
             child: GestureDetector(
                 onTap: (){
                   setState(() {
                     selectedIndex = index;
                   });
                 },
                 child: AllExpensesItem(
                   allExpensesItemModel: item,isSelected: selectedIndex==index)));
       }
      }).toList(),
    );
  }
}
