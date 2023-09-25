// ignore_for_file: prefer_const_constructors

import 'package:chat_app/screens/chats/chats_screen.dart';
import 'package:flutter/material.dart';

class SigninOrSignupScreen extends StatelessWidget {
  const SigninOrSignupScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/back.jpg'),
              fit: BoxFit.cover,
            )
          ),
          alignment: Alignment.center,
          child: Column(
            children: [
              Spacer(flex: 1),
              Image.asset(
                'assets/images/logo.png',
                height: 180,
              ),
              Spacer(flex: 2),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatsScreen()
                  )
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                    Size(300, 50)
                  )
                ),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).textTheme.bodyLarge?.color
                  ),
                )
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                    Size(300, 50),
                  ),
                  backgroundColor: MaterialStateProperty.resolveWith((Set<MaterialState>states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Color.fromARGB(255, 131, 93, 253);
                    }
                    return  Color.fromARGB(255, 109, 64, 255);
                  })
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).textTheme.bodyLarge?.color
                  ),
                )
              ),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}