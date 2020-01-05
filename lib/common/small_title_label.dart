import 'package:flutter/material.dart';

class SmallTitleLabel extends StatelessWidget {
  final String title;
  SmallTitleLabel({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[350],
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
      margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0, bottom: 10.0),
      child: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}