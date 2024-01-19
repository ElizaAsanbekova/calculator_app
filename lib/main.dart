import 'dart:math';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyClass(),
    );
  }
}

class MyClass extends StatefulWidget {
  MyClass({super.key});

  @override
  State<MyClass> createState() => _MyClassState();
}

String go = '0';
int nulm = 9;
String no = "";

class _MyClassState extends State<MyClass> {
  Widget Rulet(
    String minus,
    Color fahrbe,
    double bukwa,
    double shirina,
  ) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            if (minus == 'AC') {
              go = '';
            } else {
              go += minus;
            }
          },
        );
      },
      child: Container(
        height: 97,
        width: shirina,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: fahrbe,
        ),
        child: Center(
          child: Text(
            minus,
            style: TextStyle(fontSize: bukwa),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('калькулятор'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment.centerRight,
            child: Text(
              '$go',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Rulet('AC', Colors.brown, 30, 97),
              Rulet('+-', Colors.brown, 30, 97),
              Rulet('%', Colors.grey, 30, 97),
              Rulet('/', Colors.orangeAccent, 30, 97),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Rulet('7', Colors.grey, 30, 97),
              Rulet('8', Colors.grey, 30, 97),
              Rulet('9', Colors.grey, 30, 97),
              Rulet('*', Colors.orangeAccent, 30, 97),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Rulet('4', Colors.grey, 30, 97),
              Rulet('5', Colors.grey, 30, 97),
              Rulet('6', Colors.grey, 30, 97),
              Rulet('+', Colors.orangeAccent, 30, 97),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Rulet('1', Colors.grey, 30, 97),
              Rulet('2', Colors.grey, 30, 97),
              Rulet('3', Colors.grey, 30, 97),
              Rulet('-', Colors.orangeAccent, 30, 97)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Rulet('0', Colors.brown, 30, 190),
              Rulet('.', Colors.grey, 30, 97),
              Rulet('=', Colors.orangeAccent, 30, 97),
            ],
          ),
        ],
      ),
    );
  }
}
