import 'package:authmodule/resetpassword/resetpassword_screen.dart';
import 'package:authmodule/survey/survey_screen.dart';
import 'package:flutter/material.dart';

import 'login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  SurveyScreen(),
    );
  }
}
