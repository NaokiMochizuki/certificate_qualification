import 'package:certicicatie_qualification/screens/select_term.dart';
import 'package:flutter/material.dart';

class SelectQuestionType extends StatelessWidget {
  static const id = 'select_question_type';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('出題方法選択')),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: (){},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('ランダム出題', style: TextStyle(color: Colors.lightBlue, fontSize: 18.0)),
                  Icon(Icons.scatter_plot, size: 50.0, color: Colors.lightBlue),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: (){Navigator.pushNamed(context, SelectTerm.id);},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('年度別出題', style: TextStyle(color: Colors.lightBlue, fontSize: 18.0)),
                  Icon(Icons.list, size: 50.0, color: Colors.lightBlue),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
