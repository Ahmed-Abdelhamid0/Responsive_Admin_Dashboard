import 'package:admin_dashboard/utils/custom_background_container.dart';
import 'package:admin_dashboard/views/widgets/income_section/income_chart.dart';
import 'package:admin_dashboard/views/widgets/income_section/income_details.dart';
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
          SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails()),
            ],
          ),
        ],
      ),
    );
  }
}
