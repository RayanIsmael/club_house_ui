import 'package:club_house_ui/widgets/homeScreen/home_screen_app_bar.dart';
import 'package:club_house_ui/widgets/homeScreen/home_screen_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarmain(),
      body: HomeScreenBody1(),
    );
  }
}
