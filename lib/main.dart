import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import 'screens/chat_screen.dart';
import 'screens/welcome_screen.dart';

void main() => runApp(const ChatApp());

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        SignUp.id: (context) => const SignUp(),
        ChatScreen.id: (context) => const ChatScreen(),
      },
    );
  }
}
