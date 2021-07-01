import 'package:club_house_ui/constants.dart';
import 'package:club_house_ui/screens/home_secreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: KBackgroundColor,
          ),
          scaffoldBackgroundColor: KBackgroundColor,
          primaryColor: Colors.white,
          accentColor: KAccentColor,
          iconTheme: IconThemeData(color: Colors.black),
          fontFamily: "Montserrat",
        ),
        home: HomeScreen());
  }
}
