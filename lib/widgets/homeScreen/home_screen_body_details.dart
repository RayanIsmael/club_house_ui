import 'package:club_house_ui/data.dart';
import 'package:club_house_ui/screens/room_screen.dart';
import 'package:club_house_ui/widgets/user_profile_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailOfBody extends StatelessWidget {
  final index;
  const DetailOfBody({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          20, index == 0 ? 40 : 10, 20, roomList.length == index + 1 ? 80 : 10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => RoomScreen(index: index,),
          ));
        },
        child: Card(
          /////////////////////card
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          ////////////containar
          child: Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            height: 190,
            width: double.infinity,
            ///////Column
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ///club
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "${roomList[index]['club']} 🏠".toUpperCase(),
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                ///name
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    "${roomList[index]['name']}",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                ///speakers
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 90,
                        child: Stack(
                          children: [
                            ///image 1
                            Positioned(
                              top: 8,
                              left: 8,
                              child: UserProfileImageMake11(
                                ImageUrl:
                                    roomList[index]["speakers"][0].imageURL,
                                size: 52,
                              ),
                            ),
                            /////image 2
                            Positioned(
                              top: 35,
                              right: 25,
                              child: UserProfileImageMake11(
                                ImageUrl:
                                    roomList[index]["speakers"][1].imageURL,
                                size: 52,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    /////names
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 90,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: roomList[index]["speakers"].length,
                            itemBuilder: (context, i) {
                              return Text(
                                "${roomList[index]["speakers"][i].firstName} ${roomList[index]["speakers"][i].lastName} 💬",
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                ////Text
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(108, 0, 0, 0),
                  child: Text.rich(TextSpan(children: [
                    ///1
                    TextSpan(
                      text: "99  ",
                    ),

                    ///2
                    WidgetSpan(
                      child: Icon(
                        CupertinoIcons.person_2,
                        size: 20,
                      ),
                    ),

                    ///3
                    TextSpan(
                      text: "  /  ",
                    ),

                    ///second section
                    TextSpan(
                      text: "55  ",
                    ),

                    ///2
                    WidgetSpan(
                      child: Icon(
                        CupertinoIcons.chat_bubble_2,
                        size: 20,
                      ),
                    ),
                  ])),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
