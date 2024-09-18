import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {

  int activeIndex=-1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1,
        child: PieChart(piChart()));
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
          title: activeIndex==0?'Design service':'40%',
          titlePositionPercentageOffset: activeIndex==0?-1.5:null,
          titleStyle: AppStyles.styleMedium16.copyWith(
            color:activeIndex==0? const Color(0xff208CC8) : Colors.white
          ),
          value: 40,
          // showTitle: false,
          color: const Color(0xff208CC8),
        ),
        PieChartSectionData(
          radius: activeIndex ==1 ?60:50,
          title: activeIndex==1?'Design product':'25%',
          titlePositionPercentageOffset: activeIndex==1?-1.5:null,
          titleStyle: AppStyles.styleMedium16.copyWith(
              color:activeIndex==1? const Color(0xff208CC8) : Colors.white
          ),
          value: 25,
          // showTitle: false,
          color: const Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          radius: activeIndex ==2 ?60:50,
          title: activeIndex==2?'Product royalti':'20%',
          titlePositionPercentageOffset: activeIndex==2?-1.5:null,
          titleStyle: AppStyles.styleMedium16.copyWith(
              color:activeIndex==2? const Color(0xff208CC8) : Colors.white
          ),
          value: 20,
          // showTitle: false,
          color: const Color(0xff064061),
        ),
        PieChartSectionData(
          radius: activeIndex ==3 ?60:50,
          title: activeIndex==3?'Others':'22%',
          titlePositionPercentageOffset: activeIndex==3?-1.5:null,
          titleStyle: AppStyles.styleMedium16.copyWith(
              color:activeIndex==3? const Color(0xff208CC8) : Colors.white
          ),
          value: 22,
          // showTitle: false,
          color: const Color(0xffE2DECD),
        ),
      ],
    );
  }
}