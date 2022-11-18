import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(const ThanksgivingApp());

class ThanksgivingApp extends StatelessWidget {
  const ThanksgivingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Happy Thanksgiving!',
      theme: ThemeData(
        primaryColor: Colors.orange[500],
        brightness: Brightness.dark,
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 16.0),
        ),
      ),
      home: const HomePage(title: 'Happy Thanksgiving!'),
    );
  }
}