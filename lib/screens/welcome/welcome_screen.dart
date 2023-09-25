// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chat_app/components/constants.dart';
import 'package:chat_app/screens/signinUp/signin_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [

            //Images
            Stack(
              children: [
                Positioned(
                  top: 100,
                  left: -40,
                  child: ClipOval(
                    child: Container(
                    width: 130,
                    height: 130,
                    color: Colors.amber,
                    child: Image.asset(
                      'assets/images/user.jpg',
                      fit: BoxFit.cover,
                    )
                    )
                  )              
                ),
                Positioned(
                  top: 20,
                  left: 160,
                  child: ClipOval(
                    child: Container(
                    width: 170,
                    height: 170,
                    color: Colors.amber,
                    child: Image.asset(
                      'assets/images/user_6.jpg',
                      fit: BoxFit.cover,
                    )
                    )
                  )              
                ),
                Positioned(
                  top: 160,
                  left: 340,
                  child: ClipOval(
                    child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber,
                    child: Image.asset(
                      'assets/images/user_2.jpg',
                      fit: BoxFit.cover,
                    )
                    )
                  )              
                ),
                Positioned(
                  top: 250,
                  left: 230,
                  child: ClipOval(
                    child: Container(
                    width: 120,
                    height: 120,
                    color: Colors.amber,
                    child: Image.asset(
                      'assets/images/user_3.jpg',
                      fit: BoxFit.cover,
                    )
                    )
                  )              
                ),
                Positioned(
                  top: 250,
                  left: 100,
                  child: ClipOval(
                    child: Container(
                    width: 70,
                    height: 70,
                    color: Colors.amber,
                    child: Image.asset(
                      'assets/images/user_4.jpg',
                      fit: BoxFit.cover,
                    )
                    )
                  ) 
                ),
                Positioned(
                  top: 280,
                  left: -20,
                  child: ClipOval(
                    child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber,
                    child: Image.asset(
                      'assets/images/user_5.jpg',
                      fit: BoxFit.cover,
                    )
                    )
                  )              
                ),
              ]
            ),

            //Title
            Padding(
              padding: EdgeInsets.fromLTRB(20, 160, 20, 0),
              child: Text(
                'Welcome to our freedom \nmessaging app',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),

            //Subtitle
            Padding(
              padding: EdgeInsets.fromLTRB(20, 320, 20, 0),
              child: Text(
                'Freedom talk any person of your \nmother language',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .color?.withOpacity(0.6),
                )
              ),
            ),      
            //Button
            Padding(
              padding: EdgeInsets.fromLTRB(20, 620, 20, 0),
              child: FittedBox(
                child: TextButton(            
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SigninOrSignupScreen()
                    ) 
                  ), 
                  child: Row(
                    children: [
                      Text(
                        'Skip',
                        style: TextStyle(
                          color: Theme.of(context)
                            .textTheme
                            .bodyLarge?.color?.withOpacity(0.8) 
                            ?? Colors.black,
                        )
                      ),
                      SizedBox(width: kPadding / 4),
                      Icon(
                        Icons.arrow_forward_ios,
                          size: 16,
                          color: Theme.of(context)
                          .textTheme
                          .bodyMedium?.color?.withOpacity(0.8) 
                          ?? Colors.black,
                      )
                    ],
                  )
                ),
              ),
            ),
          ],
        ),      
      )
    );   
  }
}