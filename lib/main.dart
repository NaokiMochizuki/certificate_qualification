import 'package:certicicatie_qualification/screens/select_category.dart';
import 'package:certicicatie_qualification/screens/setting.dart';
import 'package:certicicatie_qualification/screens/study_record.dart';
import 'package:certicicatie_qualification/screens/home.dart';
import 'package:flutter/material.dart';
import 'screens/top.dart';

void main() => runApp(CertificateQualificationApp());

class CertificateQualificationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      initialRoute: Top.id,
      routes: {
        Top.id: (context) => Top(),
        Home.id: (context) => Home(),
        SelectCategory.id: (context) => SelectCategory(),
        StudyRecord.id: (context) => StudyRecord(),
        Setting.id: (context) => Setting(),
      }
    );
  }
}
