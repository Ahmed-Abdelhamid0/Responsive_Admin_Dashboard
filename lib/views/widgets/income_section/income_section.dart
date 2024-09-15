import 'package:admin_dashboard/views/widgets/income_section/income_header.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
         IncomeHeader(),
      ],
    );
  }
}
