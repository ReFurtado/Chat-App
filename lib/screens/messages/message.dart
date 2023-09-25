// ignore_for_file: prefer_const_constructors, must_be_immutable, camel_case_types, dead_code

import 'package:chat_app/models/chat.dart';
import 'package:chat_app/screens/messages/audio_message.dart';
import 'package:chat_app/screens/messages/text_mesage.dart';
import 'package:chat_app/screens/messages/video_message.dart';
import 'package:chat_app/components/constants.dart';
import 'package:flutter/material.dart';
import '../../models/chat_message.dart';

class Message extends StatelessWidget {
  Message({
    Key? key, 
    required this.message, 
    required this.chat,
  }) : super(key: key);

  ChatMessage message;
  Chat chat;

  @override
  Widget build(BuildContext context) {

    Widget messageContaint(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return textMessage(message: message, chat: chat);
          break;
        case ChatMessageType.audio:
          return audioMessage(message: message);
          break;
        case ChatMessageType.video:
          return videoMessage();
        default:
          return SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(kPadding,kPadding, kPadding, 0),
      child: Row(
          mainAxisAlignment: message.isSender 
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
            children: [
              messageContaint(message),
              if (message.isSender) messageStatusDot(
                status: message.messageStatus
              ),
            ], 
      ),
    );
  }
}

class messageStatusDot extends StatelessWidget {
  const messageStatusDot({super.key, required this.status});

  final MessageStatus status;

  @override
  Widget build(BuildContext context) {

    Color? dotColor(MessageStatus status) {
      switch (status) {
        case MessageStatus.not_sent:
          return kErrorColor;
          break;
        case MessageStatus.not_view:
          return Theme.of(context).textTheme.bodySmall?.color?.withOpacity(.1);
          break;
        case MessageStatus.viewed:
          return Colors.green;
          break;
        default:
          return Colors.transparent;
      }
    }

    return Container(
      margin: EdgeInsets.only(left: kPadding / 2),
      width: 14,
      height: 14,
      decoration: BoxDecoration(
        color: dotColor(status),
        shape: BoxShape.circle,
      ),
      child: Icon(
        status == MessageStatus.not_sent 
          ? Icons.close 
          : Icons.done,
        size: 8,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
