import 'package:flutter/material.dart';

class Footer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home'),),
        BottomNavigationBarItem(icon: Icon(Icons.mode_edit), title: Text('学習'),),
        BottomNavigationBarItem(icon: Icon(Icons.show_chart), title: Text('学習履歴'),),
        BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('設定'),),
      ],
    );
  }
}
