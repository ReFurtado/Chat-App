// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:chat_app/models/chat.dart';
import 'package:chat_app/models/chat_message.dart';
import 'package:chat_app/screens/messages/chat_input_field.dart';
import 'package:chat_app/screens/messages/message.dart';
import 'package:flutter/material.dart';


class MessagesBody extends StatelessWidget {
  const MessagesBody
  ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: demeChatMessages.length,      
            itemBuilder: (context, index) => Message(
              message: demeChatMessages[index], 
              chat: chatsData[index],
            ),
          ),
        ),
        ChatInputField(),
      ],
    );
  }
}

