import 'package:flutter/material.dart';

// jikalau kita menginginkan perubahan data yang dinamais kita harus menggunakan stateful widget
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  // jikalau stateful widget maka harus ada createState
  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

// class dibawah menggunakan _ karena hanya bisa diakses oleh file ini saja
class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/dice-1.png';

  // adanya fungsi ini karena onpressed ingin fungsi yang tidak mengembalikan nilai apapun
  void rollDice() {
    // setState digunakan untuk memberitahu flutter bahwa ada perubahan data
    setState(() {
      // random number 1-6
      final randomNumber = 1 + DateTime.now().microsecondsSinceEpoch % 6;
      activeDiceImage = 'assets/dice-$randomNumber.png';
      //
    // activeDiceImage = 'assets/dice-2.png';
    });
    print(activeDiceImage);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(activeDiceImage,
            width: 200, height: 200, fit: BoxFit.cover),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: rollDice,
          child: const Text('Roll Dice'),
          style: ElevatedButton.styleFrom(
              // padding: const EdgeInsets.all(20),
              shadowColor: Colors.black,
              elevation: 5,
              minimumSize: const Size(150, 50)),
        ),
      ],
    );
  }
}
