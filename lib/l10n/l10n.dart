import 'package:flutter/material.dart';

class L10n {
  static final all = [
    const Locale('en'),
    const Locale('uk'),
    const Locale('ru'),
  ];

  static String getFlag(String code) {
    switch (code) {
      case 'uk':
        return 'πΊπ¦';
      case 'ru':
        return 'π·πΊ';
      case 'en':
        return 'πΊπΈ';
      case 'en':
      default:
        return 'πΊπΈ';
    }
  }
}
