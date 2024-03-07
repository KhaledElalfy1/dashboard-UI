import 'package:dashboard/feature/home/presentation/view/widgets/dashboard_activity_details.dart';
import 'package:dashboard/feature/home/presentation/view/widgets/dashboard_line_chart_card.dart';
import 'package:dashboard/feature/home/presentation/view/widgets/dashboard_search_bar.dart';
import 'package:flutter/material.dart';

class DashboardSection extends StatelessWidget {
  const DashboardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 20,
        ),
        DashboardSearchBar(),
        SizedBox(
          height: 20,
        ),
        ActivityDetailsSection(),
        SizedBox(
          height: 20,
        ),
        LineChartCard(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
