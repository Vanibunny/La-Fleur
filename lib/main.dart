import 'package:flutter/material.dart';
import 'home.dart';
import 'about.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Name',
      theme: ThemeData(
        primarySwatch: Colors.purple,

      ),
      home: HomeScreen(),
    );
  }
}