import 'package:dashboard/core/theme/app_theme.dart';
import 'package:dashboard/feature/home/presentation/controller/cubit/home_cubit.dart';
import 'package:dashboard/feature/home/presentation/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DashBoard ',
      theme: theme(),
      home:  BlocProvider(
        create: (context) => HomeCubit(),
        child:const HomeScreen(),
      ),
    );
  }
}
