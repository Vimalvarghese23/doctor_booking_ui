import 'package:flutter/material.dart';

class DateContainer extends StatelessWidget {
  final Color mycolor;
  final String date;
  final Color fcolor;
  DateContainer(
      {Key? key,
      required this.mycolor,
      required this.date,
      required this.fcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 90,
      decoration: BoxDecoration(
          color: mycolor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 0.5, offset: Offset(0, 2))
          ]),
      child: Center(
          child: Text(
        date,
        style: TextStyle(color: fcolor),
      )),
    );
  }
}
