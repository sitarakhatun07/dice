import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const diceapp());
}

class diceapp extends StatelessWidget {
  const diceapp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: FirstPage() ,
    );
  }
}
class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var ChangeImage = 'assets/dice1.png';
  var ChangeImage2 = 'assets/dice2.png';
  int LeftDice = 1;
  int RightDice = 1;
  void roll(){
    int LeftDice = Random().nextInt(6)+1;
    int RightDice = Random().nextInt(6)+1;
    setState(() {
      ChangeImage = 'assets/dice$LeftDice.png';
      ChangeImage2 = 'assets/dice$RightDice.png';

    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Dice App'),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(child: GestureDetector(
                onTap: roll,
                child: Image.asset(ChangeImage),
              ),
              ),
              SizedBox(
                width: 25,
              ),
              Expanded(child: GestureDetector(
                onTap:roll,
                child: Image.asset(ChangeImage2),
              ),
              ),
            ],

          ),
        ],
      ),
    );
  }
}



