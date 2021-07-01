import 'package:club_house_ui/data.dart';
import 'package:club_house_ui/widgets/user_profile_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar appbarmain() {
  return AppBar(
    elevation: 0,
    leading: IconButton(
      iconSize: 25,
      icon: Icon(CupertinoIcons.search),
      onPressed: () {},
    ),
    actions: [
      IconButton(
        iconSize: 25,
        icon: Icon(CupertinoIcons.envelope_open),
        onPressed: () {},
      ),
      /////
      IconButton(
        iconSize: 25,
        icon: Icon(CupertinoIcons.calendar),
        onPressed: () {},
      ),
      /////
      IconButton(
        iconSize: 25,
        icon: Icon(CupertinoIcons.bell),
        onPressed: () {},
      ),
      /////
      GestureDetector(
        onTap: () {
          print("GestureDetector");
        },
        child: Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 5),
          child:
              UserProfileImageMake11(ImageUrl: currentUser.imageURL, size: 34),
        ),
      )
    ],
  );
}
