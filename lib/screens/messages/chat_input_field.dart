// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

import '../../components/constants.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kPadding,
        vertical: kPadding,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 22,
            color: Color(0xFF087949).withOpacity(.1),
          )
        ]
      ),
      child: Row(
        children: [
          Icon(
            Icons.mic,
            color: kPrimaryColor,
          ),
          SizedBox(width: kPadding * .5),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: kPadding * .6),
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(.1),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.sentiment_satisfied_alt_outlined,
                    color: Theme.of(context)
                      .iconTheme
                      .color
                      ?.withOpacity(.6)
                  ),
                  SizedBox(width: kPadding * .5),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Type message',
                        border: InputBorder.none,
                      ),
                    )
                  ),
                  Icon(
                    Icons.attach_file,
                    color: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.color
                      ?.withOpacity(.6)
                  ),
                  SizedBox(width: kPadding * .5),
                  Icon(
                    Icons.camera_alt_outlined,
                    color: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.color
                      ?.withOpacity(.6)
                  ),
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}