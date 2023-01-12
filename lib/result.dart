import 'package:flutter/material.dart';

import 'main.dart';

class Result extends StatelessWidget {
  final Function() q;
  final resultScore;

  Result(this.q, this.resultScore);

  String get resultPhrases {
    String resultText;
    if (resultScore >= 70) {
      resultText = "You are Awesome!";
    } else if (resultScore >= 40) {
      resultText = "Pretty Likable!";
    } else {
      resultText = "You are so bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Your Score is $resultScore",
            style:
                TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: b),
            textAlign: TextAlign.center,
          ),
          Text(
            resultPhrases,
            style:
                TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: b),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            child: Text(
              "Reset The Questions ",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            onPressed: q,
          ),
        ],
      ),
    );
  }
}
