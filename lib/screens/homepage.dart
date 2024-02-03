import 'package:flutter/material.dart';
import 'package:frenzychatapp/screens/chatscreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Center(child: Text("Frenzy Chat")),
      ),
      body: const ChatScreen()
    );
  }
}
