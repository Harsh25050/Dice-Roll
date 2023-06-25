import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  void rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/images/dice-$currentDiceRoll.png',
        width: 100,
      ),
      const SizedBox(
        height: 20,
      ),
      ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 14, 226, 18)),
          child: const Text('Roll Dice'))
    ]);
  }
}
