import 'package:day_1/screen_1.dart';
import 'package:day_1/screen_2.dart';
import 'package:day_1/screen_3.dart';
import 'package:day_1/screen_4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen4(),
    );
  }
}



