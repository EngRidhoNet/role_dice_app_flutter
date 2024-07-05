import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {

  const StyleText(this.text,{super.key});

  final String text;
  // cara untuk mendapatkan nilai text adalah dengan menambahkan tambahan pada constructor
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style:const TextStyle(
          fontSize: 28, 
            color:  Color.fromARGB(255, 191, 83, 83),
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            letterSpacing: 2.0,
            shadows: [
            Shadow(
              color: Colors.black,
              offset: Offset(2, 2),
              blurRadius: 3,
            ),
            ],
          ),
          overflow: TextOverflow.ellipsis,
      ),
    );
  }
}