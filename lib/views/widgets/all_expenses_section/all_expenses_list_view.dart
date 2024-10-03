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
        children: [
          Expanded(
            child: GestureDetector(
              onTap: (){
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: AllExpensesItem(allExpensesItemModel: expensesItems[0],isSelected: selectedIndex==0),
            ),
          ),
         const SizedBox(width: 8),
          Expanded(
            child: GestureDetector(
              onTap: (){
                setState(() {
                  selectedIndex = 1;
                });
              },
              child: AllExpensesItem(allExpensesItemModel: expensesItems[1],isSelected: selectedIndex==1),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: GestureDetector(
              onTap: (){
                setState(() {
                  selectedIndex = 2;
                });
              },
              child: AllExpensesItem(allExpensesItemModel: expensesItems[2],isSelected: selectedIndex==2),
            ),
          ),
        ],
      );

  }
}
