import 'package:flutter/material.dart';
import 'package:stream_demo_project/all.demo/diceRollerGame/dice_roller.dart';

class DiceMainPage extends StatelessWidget {
  const DiceMainPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text("Dice Roller"),
      //   backgroundColor: const Color(0xFF800080),
      // ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purpleAccent, Colors.purple],
            end: Alignment.topLeft,
            begin: Alignment.bottomRight,
          ),
        ),
        child:const DiceRoller(),
      ),
    );
  }
}
