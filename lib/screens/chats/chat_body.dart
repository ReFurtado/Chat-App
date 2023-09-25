// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:chat_app/components/filled_outline_button.dart';
import 'package:chat_app/models/chat.dart';
import 'package:chat_app/components/constants.dart';
import 'package:flutter/material.dart';
import 'chat_card.dart';

class Body extends StatelessWidget {
  final Key firstLocalKey = UniqueKey();
  final Key secondLocalKey = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(kPadding, 0, kPadding, kPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              fillOutlineButton(
                key: firstLocalKey, 
                press: () {},
                text: 'All',
              ),
              SizedBox(width: kPadding),
              fillOutlineButton(
                key: secondLocalKey, 
                press: () {}, 
                text: 'Active',
                isFilled: false,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () {}
            ),
          ),
        )
      ],
    );
  }
}

