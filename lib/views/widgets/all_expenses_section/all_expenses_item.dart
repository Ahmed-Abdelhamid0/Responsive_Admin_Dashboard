import 'package:admin_dashboard/models/all_expenses_item_model.dart';
import 'package:admin_dashboard/views/widgets/all_expenses_section/active_all_expense_item.dart';
import 'package:admin_dashboard/views/widgets/all_expenses_section/disactive_all_expense_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.allExpensesItemModel, required this.isSelected});
final AllExpensesItemModel allExpensesItemModel;
final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected ? ActiveAllExpenseItem(allExpensesItemModel: allExpensesItemModel): DisActiveAllExpenseItem(allExpensesItemModel: allExpensesItemModel);
  }
}


