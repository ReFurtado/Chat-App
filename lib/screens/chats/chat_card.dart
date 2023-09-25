// ignore_for_file: prefer_const_constructors

import 'package:chat_app/screens/messages/messages_screen.dart';
import 'package:flutter/material.dart';
import '../../models/chat.dart';
import '../../components/constants.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({
    super.key, required this.chat, required this.press,
  });

  final Chat chat;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MessageScreen(chat: chat)
        )
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: kPadding, 
          vertical: kPadding * 0.70),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(chat.image),
                ),
                if (chat.isActive) 
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 1, 255, 9),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        )
                      ),
                    ),
                  )
              ] 
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      chat.name,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).textTheme.bodyLarge?.color
                      ),
                    ),
                    SizedBox(height: 6),
                    Opacity(
                      opacity: 0.6,
                      child: Text(
                        chat.lastMessage,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).textTheme.bodyLarge?.color
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ),
            Opacity(
              opacity: 0.6,
              child: Text(chat.time)),
          ],
        ),
      ),
    );
  }
}