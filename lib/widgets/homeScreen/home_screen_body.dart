import 'package:club_house_ui/constants.dart';
import 'package:club_house_ui/data.dart';
import 'package:club_house_ui/widgets/homeScreen/home_screen_body_details.dart';
import 'package:flutter/material.dart';

class HomeScreenBody1 extends StatelessWidget {
  const HomeScreenBody1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        alignment: Alignment.center,
        children: [
          ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: roomList.length,
            itemBuilder: (context, index) {
              return DetailOfBody(index: index);
            },
          ),
          ////gradient
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    KBackgroundColor.withOpacity(0.001),
                    KBackgroundColor.withOpacity(0.5),
                    KBackgroundColor,
                  ],
                ),
              ),
            ),
          ),

          ///button
          Positioned(
            bottom: 35,
            child: InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  width: 175.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21.0),
                    color: Colors.green[400],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Start a room',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
