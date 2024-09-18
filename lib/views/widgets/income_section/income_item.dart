import 'package:admin_dashboard/models/income_model.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class IncomeItem extends StatelessWidget {
  const IncomeItem({super.key, required this.incomeModel});
final IncomeModel incomeModel;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: Container(
        width: 12,
        height: 12,
        color:incomeModel.color
      ),
      title: Text(
        incomeModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        incomeModel.percentage,
        style: AppStyles.styleMedium16(context).copyWith(
          color: const Color(0xff208CC8),
        ),
      ),

    );
  }
}
