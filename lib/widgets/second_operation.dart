import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondOperationText extends StatelessWidget {
  final double totalScore;
  final int id;

  SecondOperationText(@required this.totalScore, @required this.id);

  @override
  Widget build(BuildContext context) {
    if (id == 2) {
      return Text(
        "${totalScore.toString().replaceAll(RegExp(r'([.]*0)(?!.*\d)'), "")}%",
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 23,
        ),
        maxLines: 1,
      );
    } else {
      return Text(
        totalScore.toString().replaceAll(RegExp(r'([.]*0)(?!.*\d)'), ""),
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 23,
        ),
        maxLines: 1,
      );
    }
  }
}
