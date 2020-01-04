import 'package:flutter/material.dart';

class StudyRecord extends StatelessWidget {
  static const String id = 'study_record';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(child: Text('this is study record page')),
        ),
      ),
    );
  }
}