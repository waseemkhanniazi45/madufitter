import 'package:flutter/material.dart';
import 'package:madufitter/view/custom_widgets/my_theme.dart';

import 'view/welcome_pages/welcome_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      home: const WelcomePage()
    );
  }
}
