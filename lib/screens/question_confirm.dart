import 'package:flutter/material.dart';
import 'package:certicicatie_qualification/common/small_title_label.dart';

class QuestionConfirm extends StatelessWidget {
  static const String id = 'question_confirm';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('出題範囲確認')),
      body: Column(
        children: <Widget>[
          SmallTitleLabel(title: '出題範囲'),
          Container(
            height: 150,
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            decoration:
                BoxDecoration(border: Border.all(color: Colors.lightBlue)),
            child: Center(child: Text('ここに出題範囲を表示する')),
          ),
          SmallTitleLabel(title: '出題開始'),
          Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightBlue),
              ),
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              child: GestureDetector(
                // TODO: ここに問題ページへの遷移処理を書く
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.alarm_on, size: 20.0, color: Colors.lightBlue),
                      SizedBox(width: 5.0),
                      Text(
                        'START',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
