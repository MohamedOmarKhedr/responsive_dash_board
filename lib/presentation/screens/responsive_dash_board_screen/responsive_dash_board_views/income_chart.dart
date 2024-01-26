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
    return PieChart(getChartData());
  }

  PieChartData getChartData() {
    return PieChartData(
        sectionsSpace: 0,
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            setState(() {
              activeIndex =
                  pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            });
          },
        ),
        sections: [
          PieChartSectionData(
              showTitle: false,
              value: 40,
              radius: activeIndex == 0 ? 40 : 30,
              color: const Color(0xff208CC8)),
          PieChartSectionData(
              showTitle: false,
              value: 25,
              radius: activeIndex == 1 ? 40 : 30,
              color: const Color(0xff4EB7F2)),
          PieChartSectionData(
              showTitle: false,
              value: 20,
              radius: activeIndex == 2 ? 40 : 30,
              color: const Color(0xff064061)),
          PieChartSectionData(
              showTitle: false,
              value: 22,
              radius: activeIndex == 3 ? 40 : 30,
              color: const Color(0xffE2DECD))
        ]);
  }
}
