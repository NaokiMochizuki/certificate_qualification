import 'package:certicicatie_qualification/screens/select_question_type.dart';
import 'package:flutter/material.dart';
import 'package:certicicatie_qualification/constant/settings.dart';
import 'package:certicicatie_qualification/screens/select_category.dart';
import 'package:certicicatie_qualification/components/box_menu.dart';

class Home extends StatelessWidget {
  static const String id = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              color: Colors.lightBlue,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: Row(
                        children: <Widget>[
                          Expanded(flex: 1, child: Icon(Icons.mode_edit, color: Colors.white, size: 28.0)),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: <Widget>[
                                Text(kAppName, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0)),
                              ],
                            ),
                          ),
                        ],
                      )
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Column(children: <Widget>[
                        Text('試験本番まで', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        Text('あと ◯日', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                BoxMenu(
                  title: 'カテゴリ別学習',
                  iconData: Icons.import_contacts,
                  onTapCallback: (){
                    Navigator.pushNamed(context, SelectCategory.id);
                  },
                ),
                BoxMenu(
                  title: '実力テスト',
                  iconData: Icons.fitness_center,
                  onTapCallback: (){
                    Navigator.pushNamed(context, SelectQuestionType.id);
                  },
                ),
                BoxMenu(
                  title: '苦手問題',
                  iconData: Icons.assignment_turned_in,
                  onTapCallback: (){
                    Navigator.pushNamed(context, SelectCategory.id);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
