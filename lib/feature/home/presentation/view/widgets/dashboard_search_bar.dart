import 'package:dashboard/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class DashboardSearchBar extends StatelessWidget {
  const DashboardSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColor.cardBackgroundColor,
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColor.primaryColor),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 5),
          hintText: 'Search',
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
            size: 20,
          ),
        ),
      ),
    );
  }
}
