import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetWid extends StatelessWidget {
  Function function;

  ResetWid(this.function);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
          border: Border.all(width: 2),
          borderRadius: BorderRadius.circular(10)),
      width: 60,
      child: IconButton(onPressed: function, icon: const Icon(Icons.refresh)),
    );
  }
}
