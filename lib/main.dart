import 'package:flutter/material.dart';
import 'package:bmicalculator/routes/user_vitals_page.dart';
import 'package:bmicalculator/routes/bmi_result_page.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: kprimColor,
        scaffoldBackgroundColor: kscaffBackColor,
      ),
      title: 'BMI CALCULATOR',
      initialRoute: '/',
      routes: {
        '/': (context) => UserVitalsPage(),
        '/result' : (context) => BmiResultPage(),
      },
    );
  }
}
