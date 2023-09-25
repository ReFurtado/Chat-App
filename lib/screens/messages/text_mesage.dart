// ignore_for_file: prefer_const_constructors, camel_case_types, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:chat_app/models/chat.dart';
import 'package:flutter/material.dart';
import '../../models/chat_message.dart';
import '../../components/constants.dart';

class textMessage extends StatelessWidget {
  textMessage({
    super.key,
    required this.message, required this.chat,
  });

  ChatMessage message;
  Chat chat;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Row(
        children: [
          if (!message.isSender)
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/user.jpg'),
          ),
          SizedBox(width: kPadding / 2),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: kPadding, 
              vertical: kPadding / 1.4,
            ),       
            decoration: BoxDecoration(
              color: message.isSender ? kPrimaryColor : Color(0xFF737373),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      message.text,
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        message.hour,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),



              
            
          ),
        ],
      ),
    );
  }
}