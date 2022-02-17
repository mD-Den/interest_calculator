// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Interest Calculator`
  String get app_bar_title {
    return Intl.message(
      'Interest Calculator',
      name: 'app_bar_title',
      desc: '',
      args: [],
    );
  }

  /// `AAAAAA`
  String get random_text {
    return Intl.message(
      'AAAAAA',
      name: 'random_text',
      desc: '',
      args: [],
    );
  }

  /// `Result`
  String get result {
    return Intl.message(
      'Result',
      name: 'result',
      desc: '',
      args: [],
    );
  }

  /// `%`
  String get label_one1 {
    return Intl.message(
      '%',
      name: 'label_one1',
      desc: '',
      args: [],
    );
  }

  /// `Number`
  String get label_two1 {
    return Intl.message(
      'Number',
      name: 'label_two1',
      desc: '',
      args: [],
    );
  }

  /// `Add %`
  String get label_three1 {
    return Intl.message(
      'Add %',
      name: 'label_three1',
      desc: '',
      args: [],
    );
  }

  /// `Take away %`
  String get label_four1 {
    return Intl.message(
      'Take away %',
      name: 'label_four1',
      desc: '',
      args: [],
    );
  }

  /// `From the number of`
  String get label_one2 {
    return Intl.message(
      'From the number of',
      name: 'label_one2',
      desc: '',
      args: [],
    );
  }

  /// `From the number of`
  String get label_two2 {
    return Intl.message(
      'From the number of',
      name: 'label_two2',
      desc: '',
      args: [],
    );
  }

  /// `To the number of`
  String get label_three2 {
    return Intl.message(
      'To the number of',
      name: 'label_three2',
      desc: '',
      args: [],
    );
  }

  /// `From the number of`
  String get label_four2 {
    return Intl.message(
      'From the number of',
      name: 'label_four2',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}