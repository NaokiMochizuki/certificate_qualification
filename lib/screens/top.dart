import 'package:flutter/material.dart';

class Top extends StatelessWidget {
  static String id = 'top';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('◯◯資格学習アプリ')),),
      body: SafeArea(
        child: Container(
          child: Center(child: Text('this is top page')),
        ),
      ),
    );
  }
}
