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
      }
    );
  }
}
