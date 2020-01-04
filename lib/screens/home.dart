import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const String id = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(child: Text('this is home page')),
        ),
      ),
    );
  }
}