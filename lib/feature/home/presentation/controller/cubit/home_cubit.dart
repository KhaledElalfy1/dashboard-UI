import 'package:dashboard/core/model/side_menu_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);
  bool isSelected = false;
  int selectedIndex = 0;
  List<SideMenuModel> menu = [
    SideMenuModel(icon: Icons.home, title: 'DashBoard'),
    SideMenuModel(icon: Icons.person, title: 'Profile'),
    SideMenuModel(icon: Icons.run_circle, title: 'Exercise'),
    SideMenuModel(icon: Icons.settings, title: 'Setting'),
    SideMenuModel(icon: Icons.history, title: 'History'),
    SideMenuModel(icon: Icons.logout, title: 'SignOut'),
  ];

  void selectedItem({required int index}) {
    selectedIndex = index;
    emit(ChangeSelectedSection());
  }
}
