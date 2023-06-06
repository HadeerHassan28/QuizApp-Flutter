import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/questionScreen.dart';
import 'screen/questionScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: QuestionScreen(),
      ),
    );
  }
}
