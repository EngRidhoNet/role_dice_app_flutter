import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_container.dart';
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 70, 125, 152),
        body: GradientContainer(
          Colors.purple,
          Colors.pinkAccent),
      ),
    ),
  );
}

