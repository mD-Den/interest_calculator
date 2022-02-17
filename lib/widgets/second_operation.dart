import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondOperationText extends StatelessWidget {
  final String totalScore;

  SecondOperationText(this.totalScore);

  @override
  Widget build(BuildContext context) {
    return Text(
      "${totalScore.toString().replaceAll(RegExp(r'([.]*0)(?!.*\d)'), "")}%",
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 23,
      ),
      maxLines: 1,
    );
  }
}
