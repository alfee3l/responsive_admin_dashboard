import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(child: PieChart(getChartData())));
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
          showTitle: false,
          radius: activeIndex == 0 ? 60 : 50,
          value: 40,
          color: const Color(0xFF208BC7),
        ),
        PieChartSectionData(
          showTitle: false,
          radius: activeIndex == 1 ? 60 : 50,
          value: 25,
          color: const Color(0xFF4DB7F2),
        ),
        PieChartSectionData(
          showTitle: false,
          radius: activeIndex == 2 ? 60 : 50,
          value: 20,
          color: const Color(0xFF064060),
        ),
        PieChartSectionData(
          showTitle: false,
          radius: activeIndex == 3 ? 60 : 50,
          value: 22,
          color: const Color(0xFFE2DECD),
        ),
      ],
    );
  }
}
