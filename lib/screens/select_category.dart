import 'package:flutter/material.dart';

class SelectCategory extends StatelessWidget {
  static const String id = 'select_category';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(child: Text('this is select category page')),
        ),
      ),
    );
  }
}