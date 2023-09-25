// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: camel_case_types
class videoMessage extends StatelessWidget {
  const videoMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width *.5,
      child: AspectRatio(
        aspectRatio: 1.5,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets/images/work.jpg'),
            ),
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 19, 227, 26),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.play_arrow,
                size: 16,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}