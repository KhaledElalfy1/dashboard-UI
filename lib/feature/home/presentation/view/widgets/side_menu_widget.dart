import 'package:dashboard/feature/home/data/side_menu_data.dart';
import 'package:dashboard/feature/home/presentation/controller/cubit/home_cubit.dart';
import 'package:dashboard/feature/home/presentation/view/widgets/side_menu_widget_item.dart';
import 'package:flutter/material.dart';

class SideMenuWidget extends StatelessWidget {
  const SideMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
      child: ListView.builder(
        itemCount: SideMenuData.menu.length,
        itemBuilder: (context, index) {
          return SideMenuItem(
            icon:HomeCubit.get(context).menu[index].icon ,
            title: HomeCubit.get(context).menu[index].title,
            index: index,
          );
        },
      ),
    );
  }
}
