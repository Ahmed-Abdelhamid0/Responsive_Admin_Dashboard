import 'package:admin_dashboard/views/widgets/design_sections/my_card_and_transaction_section.dart';
import 'package:admin_dashboard/views/widgets/drawer_section/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'design_sections/all_expenses_and_quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
            child: AllExpensesAndQuickInvoice(),
        ),
        SizedBox(width: 32),
        Expanded(child: MyCardAndTransactionSection()),
      ],
    );
  }
}

