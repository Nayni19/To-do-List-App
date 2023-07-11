import 'package:flutter/material.dart';
import '../constants.dart';

class CircleIcon extends StatelessWidget {
  const CircleIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: secondaryColor,
      radius: 30,
        child: Icon(Icons.list, size: 40, color: primaryColor));
  }
}