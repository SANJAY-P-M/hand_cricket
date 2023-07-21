import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(PlayWindow());
}

class PlayWindow extends StatefulWidget {
  const PlayWindow({super.key});

  @override
  State<PlayWindow> createState() => _PlayWindowState();
}

class _PlayWindowState extends State<PlayWindow> {
  int number = Random().nextInt(6) + 1;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "images/hand-cricket$number.png",
            height: 250,
          ),
          SizedBox(
            height: 78,
          ),
          Text(
            "SCORE : " + score.toString(),
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 32,
            ),
          ),
          SizedBox(
            height: 78,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(Size(150, 60))),
                onPressed: () {
                  setState(() {
                    score += number;
                    number = Random().nextInt(6) + 1;
                  });
                },
                child: Text(
                  "THROW NEXT",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(Size(150, 60))),
                onPressed: () {
                  setState(() {
                    score = 0;
                    number = 0;
                  });
                },
                child: Text(
                  "RESET",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
