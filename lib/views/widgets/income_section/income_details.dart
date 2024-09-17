import 'package:admin_dashboard/models/income_model.dart';
import 'package:admin_dashboard/views/widgets/income_section/income_item.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
static const List<IncomeModel> incomeList=[
  IncomeModel(
      color:  Color(0xff208CC8),
      title: 'Design service',
      percentage: '40%',
  ),
  IncomeModel(
    color:  Color(0xff4EB7F2),
    title: 'Design product',
    percentage: '25%',
  ),
  IncomeModel(
    color:  Color(0xff064061),
    title: 'Product royalti',
    percentage: '20%',
  ),
  IncomeModel(
    color:  Color(0xffE2DECD),
    title: 'Other',
    percentage: '22%',
  ),
];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: incomeList.map((child)=>IncomeItem(incomeModel: child)).toList(),
    );

  }
}
