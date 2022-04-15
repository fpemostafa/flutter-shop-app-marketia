import 'package:flutter/material.dart';

class MyNavigator {
  static pushTo(context, page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  static pushAndKill(context, page) {
    Navigator.pushReplacement(context, page);
  }
}
