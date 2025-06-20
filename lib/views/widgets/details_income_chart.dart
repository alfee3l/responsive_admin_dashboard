import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

class DetailsIncomeChart extends StatefulWidget {
  const DetailsIncomeChart({super.key});

  @override
  State<DetailsIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailsIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(child: PieChart(getChartData())),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (flTouchEvent, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset:activeIndex == 0 ? 1.5 : null,
          radius: activeIndex == 0 ? 60 : 50,
          titleStyle: AppStyles.styleMedium16(context).copyWith(color:activeIndex == 0 ?  null  : Colors.white),
          title: activeIndex == 0 ?  'Design service'  :'40%',
          value:40,
          color: const Color(0xFF208BC7),
        ),
        PieChartSectionData(
           titlePositionPercentageOffset:activeIndex == 1 ? 2.2 : null,
          radius: activeIndex == 1 ? 60 : 50,
         titleStyle: AppStyles.styleMedium16(context).copyWith(color:activeIndex == 1 ?  null  : Colors.white),
         
           title: activeIndex == 1 ?  'Design product'  :'25%',
          value:25,
          color: const Color(0xFF4DB7F2),
        ),
        PieChartSectionData(
           titlePositionPercentageOffset:activeIndex == 2 ? 1.4 : null,
          radius: activeIndex == 2 ? 60 : 50,
          titleStyle: AppStyles.styleMedium16(context).copyWith(color:activeIndex == 2 ?  null  : Colors.white),
          value:20,
           title: activeIndex == 2 ?  'Product royalti '  :'20%',
          color: const Color(0xFF064060),
        ),
        PieChartSectionData(
           titlePositionPercentageOffset:activeIndex == 3 ? 1.4 : null,
          radius: activeIndex == 3 ? 60 : 50,
         titleStyle: AppStyles.styleMedium16(context).copyWith(color:activeIndex == 3 ?  null  : Colors.white),
         
           title: activeIndex == 3 ?  'Other '  :'22%',
          value:22,
          color: const Color(0xFFE2DECD),
        ),
      ],
    );
  }
}


//get_responsive_fontSize