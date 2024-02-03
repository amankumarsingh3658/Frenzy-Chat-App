import 'package:flutter/material.dart';
import 'package:frenzychatapp/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        primaryIconTheme: const IconThemeData(
          color: Colors.teal
        )
      ),
      title: 'Frenzy Chat App',
      home: const HomePage(),
    );
  }
}