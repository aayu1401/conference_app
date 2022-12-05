import 'package:conference_app/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Conference App',
      theme: ThemeData(
        primaryColor: Colors.teal[700],
        fontFamily: 'Poppins',
      ),
      home: Home()
    );
  }
}


