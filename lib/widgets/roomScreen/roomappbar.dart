import 'package:club_house_ui/data.dart';
import 'package:club_house_ui/widgets/user_profile_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar roomappbar(context) {
  return AppBar(
    elevation: 0,
    leadingWidth: 130,
    leading: TextButton.icon(
      style: TextButton.styleFrom(
          primary: Colors.black, textStyle: TextStyle(fontSize: 16)),
      onPressed: () => Navigator.of(context).pop(),
      icon: Icon(
        CupertinoIcons.chevron_down,
        size: 20,
      ),
      label: Text("Hallway"),
    ),
    actions: [
      IconButton(
        iconSize: 26,
        icon: Icon(CupertinoIcons.doc),
        onPressed: () {},
      ),
      /////
      GestureDetector(
        onTap: () {
          print("GestureDetector");
        },
        child: Padding(
          //padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
          padding: EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 5),
          child:
              UserProfileImageMake11(ImageUrl: currentUser.imageURL, size: 34),
        ),
      )
    ],
  );
}
