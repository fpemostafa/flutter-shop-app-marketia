  import 'package:flutter/material.dart';
  

Text bigText({
    required String text,
  }) =>
      Text(
        text,
        style: const TextStyle(
            color: Color(0xFF3D3014),
            fontWeight: FontWeight.bold,
            fontSize: 14),
      );
  Text smallText({
    required String text,
  }) =>
      Text(
        text,
        style: const TextStyle(
            color: Color(0xFF3D3014),
            fontWeight: FontWeight.normal,
            fontSize: 10),
      );