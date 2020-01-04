import 'package:flutter/material.dart';

class SelectTerm extends StatelessWidget {
  static const String id = 'select_term';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('出題年度選択')),
      body: Container(
        child: Center(child: Text('this is select term page')),
      ),
    );
  }
}