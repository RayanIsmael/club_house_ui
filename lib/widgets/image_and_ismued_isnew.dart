import 'package:club_house_ui/widgets/user_profile_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageAndIsMuedIsNew extends StatelessWidget {
  final String imageUrl;
  final double size;
  final bool isMuted;
  final bool isNew;
  final String name;
  const ImageAndIsMuedIsNew({
    Key? key,
    required this.imageUrl,
    this.size = 24,
    this.isMuted = false,
    this.isNew = false,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            //image
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: UserProfileImageMake11(ImageUrl: imageUrl, size: size),
            ),
            //if new user
            if (isNew)
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  height: 30,
                  width: 30,
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(1),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 4,
                      )
                    ],
                  ),
                  child: Text(
                    "🎉",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            //if new user
            if (isMuted)
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                    height: 30,
                    width: 30,
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(1),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 4,
                        )
                      ],
                    ),
                    child: Icon(CupertinoIcons.mic_slash_fill)),
              )
          ],
        ),
        //name
        Flexible(
          child: Text(
            name,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
