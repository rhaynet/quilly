import 'package:flutter/material.dart';
import 'package:quilly/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
