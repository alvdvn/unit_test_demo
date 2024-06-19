import 'package:flutter/material.dart';
import 'package:unit_test_demo/injection/dl.dart';
import 'package:unit_test_demo/screen/demo_widget.dart';
import 'package:unit_test_demo/screen/login/login_wiget.dart';

void main() async{
 await configutionDepentences();
 runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home: LoginWiget()
    );
  }
}

