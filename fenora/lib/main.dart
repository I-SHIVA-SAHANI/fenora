import 'package:fenora/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFFFFB0B0), Color(0xFFC7C5C5)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: HomeScreen(),
        ),
      ),
    );
  }
}
