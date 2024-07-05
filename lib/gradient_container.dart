import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorOne, this.colorTwo, {super.key});

  final Color colorOne;
  final Color colorTwo;

  // adanya fungsi ini karena onpressed ingin fungsi yang tidak mengembalikan nilai apapun
  void rollDice() {}
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [colorOne, colorTwo],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/dice-1.png',
                width: 200, height: 200, fit: BoxFit.cover),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: rollDice, 
              child: const Text('Roll Dice'),
              style:ElevatedButton.styleFrom(
                // padding: const EdgeInsets.all(20),
                shadowColor: Colors.black,
                elevation: 5,
                minimumSize: const Size(150, 50)
              ),
            ), 
          ],
        ),
      ),
    );
  }
}
