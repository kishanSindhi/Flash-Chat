import 'package:flutter/material.dart';

class RoundedTextBox extends StatelessWidget {
  const RoundedTextBox({
    Key? key,
    required this.onChanged,
    required this.hintText,
    required this.obscureText,
  }) : super(key: key);

  final Function(String) onChanged;
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(32),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.lightBlueAccent,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(32.0),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.lightBlueAccent,
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(32.0),
          ),
        ),
      ),
    );
  }
}
