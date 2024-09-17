import 'package:flutter/material.dart';

import 'income_chart.dart';
import 'income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return width >= 1200 && width < 1750 ? const SizedBox() : const  Row(
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        Expanded(child: IncomeChart()),
        Expanded(flex:2,child: IncomeDetails()),
      ],
    );
  }
}