import 'package:flutter/material.dart';

class BoxMenu extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Function onTapCallback;

  BoxMenu({@required this.title, @required this.iconData, @required this.onTapCallback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // TODO: ページ遷移時に苦手問題のみを抽出条件とするパラメーター渡す
      onTap: onTapCallback,
      child: Container(
        padding: EdgeInsets.all(30.0),
        margin: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0, bottom: 20.0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.lightBlue)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(iconData, color: Colors.lightBlue, size: 25.0),
            SizedBox(width: 7.0),
            Text(title, style: TextStyle(color: Colors.lightBlue, fontSize: 20.0, fontWeight: FontWeight.bold)),
          ],
        ),
        width: double.infinity,
      ),
    );
  }
}