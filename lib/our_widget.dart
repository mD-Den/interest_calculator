import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interest_calculator/widgets/reset.dart';
import 'package:interest_calculator/widgets/result_text.dart';
import 'package:interest_calculator/widgets/second_operation.dart';

class FirstCont extends StatefulWidget {
  final _controllerOne = TextEditingController();
  final _controllerTwo = TextEditingController();
  final String labelOne;
  final String labelTwo;

  final id;
  final double totalScore = 0.0;

  int get count => id;

  FirstCont({
    @required this.id,
    @required this.labelOne,
    @required this.labelTwo,
  });

  @override
  State<FirstCont> createState() => _FirstContState();
}

class _FirstContState extends State<FirstCont> {
  double totalScore = 0.0;
  String s = "";

  void _result() {
    switch (widget.id) {
      case 1:
        if (widget._controllerOne == 0.0 || widget._controllerTwo == 0.0) {
          return;
        }

        final firstSummand = double.parse(widget._controllerOne.text);
        final secondSummand = double.parse(widget._controllerTwo.text);
        setState(() {
          totalScore = (secondSummand * firstSummand) / 100;
        });

        break;
      case 2:
        if (widget._controllerOne == 0.0 || widget._controllerTwo == 0.0) {
          return;
        }
        final firstSummand = double.parse(widget._controllerOne.text);
        final secondSummand = double.parse(widget._controllerTwo.text);
        setState(() {
          totalScore = firstSummand / secondSummand * 100;
        });
        break;
      case 3:
        if (widget._controllerOne == 0.0 || widget._controllerTwo == 0.0) {
          return;
        }

        final firstSummand = double.parse(widget._controllerOne.text);
        final secondSummand = double.parse(widget._controllerTwo.text);
        setState(() {
          totalScore = (secondSummand + (secondSummand * 0.01 * firstSummand));
        });
        break;
      case 4:
        if (widget._controllerOne == 0.0 || widget._controllerTwo == 0.0) {
          return;
        }

        final firstSummand = double.parse(widget._controllerOne.text);
        final secondSummand = double.parse(widget._controllerTwo.text);
        setState(() {
          totalScore = (secondSummand - (secondSummand * 0.01 * firstSummand));
        });
        break;
    }
  }

  void _resetScore() {
    setState(() {
      widget._controllerOne.text = "";
      widget._controllerTwo.text = "";
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      color: Colors.blue,
      child: Column(children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  inputFormatters: [LengthLimitingTextInputFormatter(10)],
                  decoration: InputDecoration(
                    fillColor: Colors.black12,
                    filled: true,
                    labelText: widget.labelOne,
                  ),
                  controller: widget._controllerOne,
                  keyboardType: TextInputType.number,
                  onSubmitted: (value) => _result(),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  inputFormatters: [LengthLimitingTextInputFormatter(10)],
                  decoration: InputDecoration(
                    fillColor: Colors.black12,
                    filled: true,
                    labelText: widget.labelTwo,
                  ),
                  controller: widget._controllerTwo,
                  keyboardType: TextInputType.number,
                  onSubmitted: (value) => _result(),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              const ResultWidget(),
              Expanded(
                child: Container(
                    height: 70,
                    width: 240,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 2,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.black26),
                      child: Center(
                        child: SecondOperationText(
                          id: widget.id,
                          totalScore: totalScore,
                        ),
                      ),
                    )),
              ),
              ResetWid(_resetScore)
            ],
          ),
        )
      ]),
    );
  }
}
