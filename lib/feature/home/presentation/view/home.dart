import 'package:dashboard/feature/home/presentation/view/widgets/dashboard_section.dart';
import 'package:dashboard/feature/home/presentation/view/widgets/side_menu_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          const Expanded(
            flex: 2,
            child: SizedBox(
              child: SideMenuSection(),
            ),
          ),
          const Expanded(
            flex: 7,
            child: DashboardSection(),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.green,
            ),
          ),
        ],
      )),
    );
  }
}
