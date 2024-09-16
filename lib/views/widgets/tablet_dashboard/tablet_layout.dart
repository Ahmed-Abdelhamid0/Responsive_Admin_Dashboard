import 'package:admin_dashboard/views/widgets/design_sections/all_expenses_and_quick_invoice.dart';
import 'package:admin_dashboard/views/widgets/drawer_section/custom_drawer.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(child: AllExpensesAndQuickInvoice()),
        SizedBox(width: 32),
      ],
    );
  }
}
