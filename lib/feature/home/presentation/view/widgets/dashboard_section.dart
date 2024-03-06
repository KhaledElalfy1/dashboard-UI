import 'package:dashboard/feature/home/presentation/view/widgets/dashboard_header.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 20,
        ),
        DashboardHeader(),
        SizedBox(
          height: 20,
        ),
        
      ],
    );
  }
}
