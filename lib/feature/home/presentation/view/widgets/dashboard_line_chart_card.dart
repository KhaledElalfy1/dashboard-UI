import 'package:dashboard/feature/home/presentation/view/widgets/dashboard_activity_details_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ActivityDetailsCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Steps overview',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 10,
          ),
          AspectRatio(
            aspectRatio: 16 / 6,
            child: LineChart(
              LineChartData(
                lineTouchData:const LineTouchData(handleBuiltInTouches: true),
                gridData: const FlGridData(show: false),
                titlesData: const FlTitlesData(
                  rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false),),
                  topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false),),
                )
              ),
              
            ),
          ),
        ],
      ),
    );
  }
}
