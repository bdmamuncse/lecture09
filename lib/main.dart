import 'package:flutter/material.dart';
import 'package:lecture_09_1_fresh_start/screens/home_screen.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lecture 09 demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(title:'Flutter Home Page Demo'),
    );
  }
}

