import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {

  int activeIndex=-1;
  @override
  Widget build(BuildContext context) {
    return PieChart(piChart());
  }

  PieChartData piChart() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex = pieTouchResponse?.touchedSection?.touchedSectionIndex??-1;
          setState(() {

          });
        },
      ),
      sections: [
        PieChartSectionData(
          radius: activeIndex ==0 ?60:50,
          value: 40,
          showTitle: false,
          color: const Color(0xff208CC8),
        ),
        PieChartSectionData(
          radius: activeIndex ==1 ?60:50,
          value: 25,
          showTitle: false,
          color: const Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          radius: activeIndex ==2 ?60:50,
          value: 20,
          showTitle: false,
          color: const Color(0xff064061),
        ),
        PieChartSectionData(
          radius: activeIndex ==3 ?60:50,
          value: 22,
          showTitle: false,
          color: const Color(0xffE2DECD),
        ),
      ],
    );
  }
}
