import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:madufitter/view/custom_widgets/my_theme.dart';

import 'controller/gendar_slection_controller.dart';
import 'view/welcome_pages/welcome_page.dart';

void main(List<String> args) {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
    GendarSelectionController gendarSelectionController =
      Get.put(GendarSelectionController());
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      home: const WelcomePage()
    );
  }
}
