import 'package:flutter/material.dart';
import 'package:counterapp/screens/counter_screen.dart' as counter_screen;


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  static const String _title = 'CounterApp';

  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyApp._title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home: const counter_screen.CounterScreen()
    );
  }

}