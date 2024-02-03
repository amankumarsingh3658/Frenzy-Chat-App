// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:frenzychatapp/screens/chatmessages.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController(text: "");
  final List<ChatMessage> _messages = <ChatMessage>[];

  void _handleSubmitted(String Text) {
    _textController.clear();
    ChatMessage message = ChatMessage(text: Text);
    setState(() {
      _messages.insert(0, message);
    });
  }

  Widget _textComposerWidget() {
    return IconTheme(
      data: const IconThemeData(color: Colors.teal),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          children: [
            Flexible(
              child: TextField(
                controller: _textController,
                decoration:
                    const InputDecoration.collapsed(hintText: "Send A Message"),
                onSubmitted: _handleSubmitted,
              ),
            ),
            IconButton(
                onPressed: () {
                  _handleSubmitted(_textController.text);
                },
                icon: const Icon(Icons.send))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: ListView.builder(
            padding: const EdgeInsets.all(8),
            reverse: true,
            itemBuilder: (ChatScreenState, int index) => _messages[index],
            itemCount: _messages.length,
          ),
        ),
        const Divider(
          height: 1,
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _textComposerWidget(),
        )
      ],
    );
  }
}
