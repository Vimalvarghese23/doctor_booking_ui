import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  final Icon myOwnicon;
  MyIcon({Key? key, required this.myOwnicon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.lightBlue,
          ),
          child: myOwnicon),
    );
  }
}
