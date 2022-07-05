import 'package:flutter/material.dart';

const TextStyle kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const TextStyle kMessageTextStyle = TextStyle(
  fontSize: 18.0,
);

const TextStyle kMessageSenderTextStyle = TextStyle(
  color: Colors.black54,
  fontSize: 12.0,
);

const InputDecoration kMessageTextFieldDecoration = InputDecoration(
  hintText: 'Type your message here....',
  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  border: InputBorder.none,
);

const BoxDecoration kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(
      color: Colors.blueAccent,
      width: 2,
    ),
  ),
);
