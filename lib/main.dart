import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s/pages/login_page1.dart';
import 'package:s/pages/home_page1.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s/utils/routes.dart';
import 'package:s/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
