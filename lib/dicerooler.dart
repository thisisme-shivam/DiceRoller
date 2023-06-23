import 'package:flutter/material.dart';
import 'dart:math';
class DiceRoller extends StatefulWidget{
  DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }


}

class _DiceRollerState extends State<DiceRoller>{

  var activeRollImage = 'assets/images/dice-1.png';
  void rollDice() {
    var nextValue = Random().nextInt(6)+1;
    setState(() {

      activeRollImage = 'assets/images/dice-$nextValue.png';

    });
  }
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeRollImage,
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(foregroundColor: Colors.white,
              textStyle: const TextStyle(
                  fontSize: 20
              )
          ),
          child: const Text('Roll Dice',),

        )
      ],
    );
  }

}