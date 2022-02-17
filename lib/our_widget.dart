import 'package:decimal/decimal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interest_calculator/widgets/result_text.dart';

class FirstCont extends StatefulWidget {
  final _controllerOne = TextEditingController();
  final _controllerTwo = TextEditingController();
  String labelOne;
  String labelTwo;

  final int id;
  final double totalScore = 0.0;

  FirstCont(
      {@required this.id, @required this.labelOne, @required this.labelTwo});

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
          totalScore = (firstSummand * 100) / secondSummand;
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

  String _labelText1() {
    switch (widget.id) {
      case 1:
        return s = "%";
        break;
      case 2:
        return s = "Число";
        break;
      case 3:
        return s = "Прибавить %";
        break;
      case 4:
        return s = "Отнять %";
        break;
      default:
        return "";
    }
  }

  String _labelText2() {
    String s = "";
    switch (widget.id) {
      case 1:
        return s;
      case 2:
        return s;
      case 3:
        return s;
      case 4:
        return s;
    }
  }

  void _resetScore() {
    setState(() {
      widget._controllerOne.text = "0.0";
      widget._controllerTwo.text = "0.0";
      totalScore = 0.0;
    });
    print(Decimal.parse('0.2') + Decimal.parse('0.1'));
    print(0.2 + 0.1);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    hintText: widget.labelOne,
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
                    // Как передать текст?
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
                          child: Text(
                        totalScore
                            .toString()
                            .replaceAll(RegExp(r'([.]*0)(?!.*\d)'), ""),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                      )),
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
      ),
      width: 60,
      child: IconButton(onPressed: function, icon: const Icon(Icons.refresh)),
    );
  }
}
