import 'package:flutter/material.dart';
import 'package:gkmt_institute/carousal.dart';
import 'package:gkmt_institute/drop.dart';
import 'package:gkmt_institute/slider.dart';
import 'package:gkmt_institute/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GKMT Institute',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
    );
  }
}
