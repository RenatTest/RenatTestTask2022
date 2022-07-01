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
        return '🇺🇦';
      case 'ru':
        return '🇷🇺';
      case 'en':
        return '🇺🇸';
      case 'en':
      default:
        return '🇺🇸';
    }
  }
}
