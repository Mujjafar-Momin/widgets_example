import 'dart:math';
import 'package:flutter/material.dart';

final randomizer=Random();
class DiceRoller extends StatefulWidget {
const DiceRoller({Key? key}) : super(key: key);

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  var activeImage="assets/images/dice-1.png";
  var diceRoll=1;

  void rollDice(){
    setState(() {
      diceRoll=randomizer.nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
           "assets/images/dice-$diceRoll.png",
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed:rollDice,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
                padding: const MaterialStatePropertyAll<EdgeInsets>(
                    EdgeInsets.all(16))),
            child: const Text(
              "Roll Dice",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
