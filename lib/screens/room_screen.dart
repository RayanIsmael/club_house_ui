import 'dart:ui';

import 'package:club_house_ui/widgets/roomScreen/room_screen_body.dart';
import 'package:club_house_ui/widgets/roomScreen/roomappbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomScreen extends StatelessWidget {
  final int index;

  const RoomScreen({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: roomappbar(context),
      body: Stack(
        children: [
          //backgraund
          Container(
            padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
            height: height,
            width: double.infinity,
            margin: EdgeInsets.only(top: height * 0.05),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
            ),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                RoomDoby(index: index),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        padding: EdgeInsets.all(10),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                "✌🏽 Leave quitly",
                style: TextStyle(fontSize: 16, color: Colors.red),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  )),
            ),

            ///right
            Row(
              children: [
                IconButton(
                  color: Colors.grey[900],
                  iconSize: 30,
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.add),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  color: Colors.grey[900],
                  iconSize: 30,
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.hand_raised),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
