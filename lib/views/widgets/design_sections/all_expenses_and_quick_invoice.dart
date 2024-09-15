
import 'package:admin_dashboard/views/widgets/quick_invoice_section/quick_invoice.dart';
import 'package:flutter/material.dart';

import '../all_expenses_section/all_expenses.dart';

class AllExpensesAndQuickInvoice extends StatelessWidget {
  const AllExpensesAndQuickInvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height:40),
        AllExpense(),
        SizedBox(height: 24),
        QuickInvoice(),

      ],
    );
  }
}