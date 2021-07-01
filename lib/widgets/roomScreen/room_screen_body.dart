import 'dart:math';

import 'package:club_house_ui/data.dart';
import 'package:club_house_ui/widgets/image_and_ismued_isnew.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomDoby extends StatelessWidget {
  final int index;
  const RoomDoby({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 55),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //first  club and icon
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 25, 20, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${roomList[index]['club']} 🏠".toUpperCase(),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(CupertinoIcons.ellipsis)
              ],
            ),
          ),
          //name
          Container(
            padding: EdgeInsets.only(left: 20),
            alignment: Alignment.topLeft,
            margin: EdgeInsets.symmetric(vertical: 4),
            child: Text(
              "${roomList[index]['name']}",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          /////space
          SizedBox(
            height: 20,
          ),
          //////
          ///speakers
          Container(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
            //color: Colors.red,
            height: 230,
            width: double.infinity,
            child: GridView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 6,
              ),
              itemCount: roomList[index]['speakers'].length,
              itemBuilder: (context, i) {
                return ImageAndIsMuedIsNew(
                  imageUrl: roomList[index]['speakers'][i].imageURL,
                  name: roomList[index]['speakers'][i].firstName,
                  size: 66,
                  isMuted: Random().nextBool(),
                  isNew: Random().nextBool(),
                );
              },
            ),
          ),
          /////space
          SizedBox(
            height: 20,
          ),
          //////
          /////followedBySpeakers
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "followedBySpeakers in room",
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
          ),
          /////followedBySpeakers
          Container(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
            //color: Colors.red,
            height: 350,
            width: double.infinity,
            child: GridView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 12,
                mainAxisSpacing: 6,
              ),
              itemCount: roomList[index]['followedBySpeakers'].length,
              itemBuilder: (context, i) {
                return ImageAndIsMuedIsNew(
                  imageUrl: roomList[index]['followedBySpeakers'][i].imageURL,
                  name: roomList[index]['followedBySpeakers'][i].firstName,
                  size: 66,
                  isMuted: Random().nextBool(),
                  isNew: Random().nextBool(),
                );
              },
            ),
          ),
          /////space
          SizedBox(
            height: 20,
          ),
          //////
          /////others
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "others in room",
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
          ),
          /////followedBySpeakers
          Container(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
            //color: Colors.red,
            height: 350,
            width: double.infinity,
            child: GridView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 12,
                mainAxisSpacing: 6,
              ),
              itemCount: roomList[index]['others'].length,
              itemBuilder: (context, i) {
                return ImageAndIsMuedIsNew(
                  imageUrl: roomList[index]['others'][i].imageURL,
                  name: roomList[index]['others'][i].firstName,
                  size: 66,
                  isMuted: Random().nextBool(),
                  isNew: Random().nextBool(),
                );
              },
            ),
          ),
          /////space
          SizedBox(
            height: 20,
          ),
          //////
        ],
      ),
    );
  }
}
