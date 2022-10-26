import 'dart:math';

import 'package:flutter/material.dart';

class DadosHome extends StatefulWidget {

  @override
  State<DadosHome> createState() => _DadosHomeState();
}

class _DadosHomeState extends State<DadosHome> {

  int leftDice = 1;
  int rigthDice = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          elevation: 10,
          centerTitle: true,
          title: const Text(
            "Dados Dinamicos",
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                flex: 1,


                    child: TextButton(
                      onPressed: (){

                        //leftDice = 6;
                        leftDice = Random().nextInt(6)+1;
                        rigthDice = Random().nextInt(6)+1;
                        print(leftDice);
                        setState(() {

                        });
                      },
                      child: Image.asset(
                        "assets/image/dice$leftDice.png",
                      ),
                    ),


              ),

              Expanded(
                flex: 1,

                  child: TextButton(
                    onPressed: (){

                      rigthDice = Random().nextInt(6)+1;
                      leftDice = Random().nextInt(6)+1;
                      setState(() {

                      });

                    },
                    child: Image.asset(
                      "assets/image/dice$rigthDice.png",
                    ),
                  ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}








