import 'package:flutter/material.dart';
import 'package:marketia/screens/home/home_page.dart';

import 'package:marketia/ui/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Marketia',
      themeMode: ThemeMode.light,
      theme: MyThemeData.lightMode,
      darkTheme: MyThemeData.darkMode,
      //home: const LoginScrren(),
      home: const HomePage(),
    );
  }
}
