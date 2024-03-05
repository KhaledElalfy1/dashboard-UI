import 'package:dashboard/core/utils/app_colors.dart';
import 'package:dashboard/feature/home/presentation/controller/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SideMenuItem extends StatelessWidget {
  const SideMenuItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.index});
  final IconData icon;
  final String title;
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        HomeCubit.get(context).selectedItem(index: index);
      },
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: HomeCubit.get(context).selectedIndex == index
                  ? AppColor.selectionColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: Icon(
                    icon,
                    color: HomeCubit.get(context).selectedIndex == index
                        ? Colors.black
                        : Colors.grey,
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: HomeCubit.get(context).selectedIndex == index
                        ? Colors.black
                        : Colors.grey,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
