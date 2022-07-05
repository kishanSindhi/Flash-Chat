import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.title,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Material(
        color: color,
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30),
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: onTap,
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
