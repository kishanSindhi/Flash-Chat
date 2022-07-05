import 'package:flutter/material.dart';

import '../components/button.dart';
import 'chat_screen.dart';
import '../components/text_field.dart';

class SignUp extends StatefulWidget {
  static const String id = '/signup_screen';
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'logo',
              child: SizedBox(
                height: 200,
                child: Image.asset('images/logo.png'),
              ),
            ),
            const SizedBox(height: 40),
            RoundedTextBox(
              hintText: 'Enter your email',
              onChanged: (value) {},
              obscureText: false,
            ),
            const SizedBox(height: 10),
            RoundedTextBox(
              hintText: 'Enter your password',
              onChanged: (value) {},
              obscureText: true,
            ),
            const SizedBox(height: 10),
            RoundedButton(
              title: 'Signup',
              color: Colors.lightBlueAccent,
              onTap: () {
                Navigator.pushNamed(context, ChatScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
