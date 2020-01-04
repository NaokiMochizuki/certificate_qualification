import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  static const String id = 'setting';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(child: Text('this is setting page')),
        ),
      ),
    );
  }
}