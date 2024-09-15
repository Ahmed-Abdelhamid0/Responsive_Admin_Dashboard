import 'package:admin_dashboard/models/transaction_model.dart';
import 'package:admin_dashboard/views/widgets/transaction_history/transaction_item.dart';
import 'package:flutter/material.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const List<TransactionModel> transactionList=[
    TransactionModel(
        title: 'Cash Withdrawal',
        subtitle: '13 Apr, 2022 ',
        amount: '\$20,129',
        withDrawl: true,
    ),
    TransactionModel(
      title: 'Landing Page project',
      subtitle: '13 Apr, 2022 at 3:30 PM',
      amount: '\$2,000',
      withDrawl: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App project',
      subtitle: '13 Apr, 2022 at 3:30 PM',
      amount: '\$20,129',
      withDrawl: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: transactionList.length,
        itemBuilder: (context,index){
          return TransactionItem(transactionModel: transactionList[index]);
        },
    );
  }
}
