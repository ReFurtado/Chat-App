// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:chat_app/screens/messages/messages_body.dart';
import 'package:chat_app/components/constants.dart';
import 'package:flutter/material.dart';
import '../../models/chat.dart';


class MessageScreen extends StatelessWidget {
  MessageScreen
    ({Key? key,
    required this.chat,
    }) : super(key: key);

  Chat chat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: MessagesBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      automaticallyImplyLeading: false,
      toolbarHeight: 80,
      title: Row(
        children: [
          BackButton(),
          CircleAvatar(
            backgroundImage: AssetImage(chat.image),
          ),
          SizedBox(width: kPadding * .7),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chat.name,
                style: TextStyle(fontSize: 16),
                //overflow: TextOverflow.ellipsis,
              ),
               Text(
                chat.time,
                style: TextStyle(fontSize: 12),
              )
            ],
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {}, 
          icon: Icon(Icons.local_phone)
        ),
        IconButton(
          onPressed: () {}, 
          icon: Icon(Icons.videocam)
        ),
        SizedBox(width: kPadding)
      ],
    );
  }
}