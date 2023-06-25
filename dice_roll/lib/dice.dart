import 'package:flutter/material.dart';

import 'diceroller.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: DiceRoll(),
      ),
    ),
  );
}

class DiceRoll extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
