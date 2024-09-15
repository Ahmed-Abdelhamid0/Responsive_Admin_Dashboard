import 'package:admin_dashboard/views/widgets/all_expenses_section/all_expenses_header.dart';
import 'package:admin_dashboard/views/widgets/all_expenses_section/all_expenses_list_view.dart';
import 'package:admin_dashboard/views/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';

class AllExpense extends StatelessWidget {
  const AllExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child:  Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesListView(),
        ],
      ),
    );
  }
}




