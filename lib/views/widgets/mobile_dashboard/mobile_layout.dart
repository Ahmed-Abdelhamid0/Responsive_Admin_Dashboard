import 'package:flutter/material.dart';

import '../design_sections/all_expenses_and_quick_invoice.dart';
import '../design_sections/my_card_and_transaction_section.dart';
import '../income_section/income_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoice(),
          SizedBox(height: 24),
          MyCardAndTransactionSection(),
          SizedBox(height: 24),
          IncomeSection()
        ],
      ),
    );
  }
}