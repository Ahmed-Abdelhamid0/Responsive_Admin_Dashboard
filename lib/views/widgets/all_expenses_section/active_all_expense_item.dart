import 'package:admin_dashboard/models/all_expenses_item_model.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/views/widgets/all_expenses_section/all_expenses_item_header.dart';
import 'package:flutter/material.dart';

class ActiveAllExpenseItem extends StatelessWidget {
  const ActiveAllExpenseItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 20,vertical: 16
      ),
      decoration: BoxDecoration(
        color: const Color(0xff4DB7F2),
        border: Border.all(color: const Color(0xffF1F1F1)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            imageBackground: Colors.white.withOpacity(0.10000000149011612),
            imageColor: Colors.white,
            image: allExpensesItemModel.image,
          ),
          const SizedBox(height: 34),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleSemiBold16.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14.copyWith(
              color: const Color(0xffFAFAFA),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            allExpensesItemModel.price,
            style: AppStyles.styleSemiBold24.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}