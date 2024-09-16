import 'package:admin_dashboard/utils/custom_background_container.dart';
import 'package:admin_dashboard/views/widgets/my_card_section/my_card_section.dart';
import 'package:admin_dashboard/views/widgets/transaction_history/transaction_history.dart';
import 'package:flutter/material.dart';

class MyCardAndTransactionSection extends StatelessWidget {
  const MyCardAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
          children: [
            MyCardSection(),
            Divider(
              height: 40,
              color: Color(0xffF1F1F1),
            ),
            TransactionHistory(),
          ],
        ),
    );
  }
}
