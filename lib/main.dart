import 'homepage.dart';
import 'package:flutter/material.dart';
import 'package:ride_sharing_app/carepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      routes: {
        'carepage': (context) => Carepage(),
        'homepage': (context) => Homepage(),
      },
    );
  }
}
