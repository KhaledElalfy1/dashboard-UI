import 'package:dashboard/core/model/side_menu_model.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  static final menu = <SideMenuModel>[
    SideMenuModel(icon: Icons.home, title: 'DashBoard'),
    SideMenuModel(icon: Icons.person, title: 'Profile'),
    SideMenuModel(icon: Icons.run_circle, title: 'Exercise'),
    SideMenuModel(icon: Icons.settings, title: 'Setting'),
    SideMenuModel(icon: Icons.history, title: 'History'),
    SideMenuModel(icon: Icons.logout, title: 'SignOut'),
  ];
}
