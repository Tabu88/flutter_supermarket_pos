import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../helpers/constants.dart';
import 'bar_data.dart';

class MyBarGraph extends StatelessWidget {
  final List weeklySummary;
  final String title;
  final String title2;
  const MyBarGraph({super.key, required this.weeklySummary, required this.title, required this.title2});

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
      sunAmount: weeklySummary[0],
      monAmount: weeklySummary[1],
      tueAmount: weeklySummary[2],
      wedAmount: weeklySummary[3],
      thurAmount: weeklySummary[4],
      friAmount: weeklySummary[5],
      satAmount: weeklySummary[6],
    );

    myBarData.initializeBarData();
    return BarChart(
      BarChartData(
        borderData: FlBorderData(
          show: true,
          border: Border.all(
            color: Colors.grey,
            width: 2
          )
        ),
        titlesData:  FlTitlesData(
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false, reservedSize: 44)),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: true, reservedSize: 44),
              axisNameSize: 20,
              axisNameWidget: Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                ),
              )
          ),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false, reservedSize: 44)),
          bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true, reservedSize: 44),
              axisNameSize: 20,
              axisNameWidget: Text(
                title2,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                ),
              )
          ),
        ),
        maxY: 100,
        minY:0,
        barGroups: myBarData.barData.map((data) => BarChartGroupData(
          barsSpace: 70,
            x: data.x,
          barRods: [BarChartRodData(toY: data.y, color: Color(Constants.primaryGreen()), width: 30, borderRadius: BorderRadius.zero)]
        )).toList()
      )
    );
  }
}
