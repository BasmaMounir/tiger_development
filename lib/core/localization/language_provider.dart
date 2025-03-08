import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

class LanguageProvider extends ChangeNotifier {
  Locale _locale = const Locale('en');

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    if (!['en', 'ar'].contains(locale.languageCode)) return;
    _locale = locale;
    Get.updateLocale(locale);
  }
}
