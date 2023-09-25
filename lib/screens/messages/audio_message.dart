// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:chat_app/models/chat_message.dart';
import 'package:chat_app/components/constants.dart';
import 'package:flutter/material.dart';

class audioMessage extends StatelessWidget {
  audioMessage({super.key, required this.message});

  ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/user.jpg'),
          ),
          SizedBox(width: kPadding / 2),
          Container(
            width: MediaQuery.of(context).size.width * .5,
            padding: EdgeInsets.symmetric(
              horizontal: kPadding / 2,
              vertical: kPadding / 2,
            ),
            decoration: BoxDecoration(
              color: message.isSender ? kPrimaryColor : Color(0xFF737373),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 30,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: kPadding / 2),
                        child: Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 2,
                              color: Colors.white,
                            ),
                            Positioned(
                              left: 0,
                              child: Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: kPadding / 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '0:59',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        message.hour,
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ),
        ],
      )
    );
  }
}