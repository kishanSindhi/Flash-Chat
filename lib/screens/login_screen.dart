import 'package:chat_app/screens/chat_screen.dart';
import 'package:flutter/material.dart';

import '../components/button.dart';
import '../components/text_field.dart';

class LoginScreen extends StatefulWidget {
  static const String id = '/login_screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            RoundedButton(
              title: 'Login',
              color: Colors.blueAccent,
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
