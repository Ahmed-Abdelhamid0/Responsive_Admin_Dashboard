import 'package:admin_dashboard/views/widgets/custom_background_container.dart';
import 'package:admin_dashboard/views/widgets/income_section/income_chart.dart';
import 'package:admin_dashboard/views/widgets/income_section/income_header.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child:  Column(
        children: [
           IncomeHeader(),
          Expanded(
            child: Row(
              children: [
                Expanded(child: IncomeChart()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
