import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import '../components/button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = '/';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animController;
  late Animation animation;

  @override
  void initState() {
    super.initState();
    animController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    animController.forward();
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(animController);

    animController.addListener(() {
      setState(() {
        animation.value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Hero(
                  tag: 'logo',
                  child: SizedBox(
                    height: 60,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText(
                      'FLASH CHAT...',
                      textStyle: const TextStyle(
                        color: Colors.black45,
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 48),
            RoundedButton(
              color: Colors.lightBlueAccent,
              onTap: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
              title: 'Login',
            ),
            RoundedButton(
              color: Colors.blueAccent,
              onTap: () {
                Navigator.pushNamed(context, SignUp.id);
              },
              title: 'Signup',
            ),
          ],
        ),
      ),
    );
  }
}
