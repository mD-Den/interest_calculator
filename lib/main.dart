import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:interest_calculator/generated/l10n.dart';
import 'package:interest_calculator/home_page.dart';

import 'generated/l10n.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        title: "Калькулятор процентов",
        theme: ThemeData(
          primaryColor: Color.fromRGBO(254, 219, 208, 1),
          inputDecorationTheme: InputDecorationTheme(
            labelStyle: TextStyle(color: Colors.black87, fontSize: 22),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Color.fromRGBO(68, 44, 46, 1), width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Color.fromRGBO(68, 44, 46, 1), width: 5),
            ),
            border: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Color.fromRGBO(68, 44, 46, 1), width: 5),
            ),
          ),
          textTheme: TextTheme(
              subtitle1: TextStyle(
                  fontSize: 22,
                  color: Color.fromRGBO(68, 44, 46, 1),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SourceSerif'),
              subtitle2: TextStyle(
                  fontSize: 22,
                  color: Color.fromRGBO(68, 44, 46, 1),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto'),
              bodyText1: TextStyle(
                fontSize: 25,
                color: Color.fromRGBO(68, 44, 46, 1),
                fontWeight: FontWeight.bold,
              )),
        ),
        home: HomePage());
  }
}
