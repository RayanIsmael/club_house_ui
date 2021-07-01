import 'package:flutter/material.dart';

class UserProfileImageMake11 extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String ImageUrl;
  final double size;
  const UserProfileImageMake11({
    // ignore: non_constant_identifier_names
    Key? key, required this.ImageUrl, required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size/2 - size/10),
      child: Image.network(
        ImageUrl,
        fit: BoxFit.cover,
        height: size,
        width: size,
      ),
    );
  }
}
