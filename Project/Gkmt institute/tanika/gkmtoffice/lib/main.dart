import 'package:flutter/material.dart';
import 'package:gkmtoffice/login.dart';
import 'package:gkmtoffice/splashscreen.dart';

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
        
        primarySwatch: Colors.blue,
      ),
      home:  Splashscreen(),
    );
  }
}

