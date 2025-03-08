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
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Tiger Development`
  String get app_title {
    return Intl.message(
      'Tiger Development',
      name: 'app_title',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get login {
    return Intl.message('Log In', name: 'login', desc: '', args: []);
  }

  /// `Email Address`
  String get email {
    return Intl.message('Email Address', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Forgot your password?`
  String get forgot_password {
    return Intl.message(
      'Forgot your password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Stay logged in`
  String get stay_logged_in {
    return Intl.message(
      'Stay logged in',
      name: 'stay_logged_in',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `العربية`
  String get arabic {
    return Intl.message('العربية', name: 'arabic', desc: '', args: []);
  }

  /// `English`
  String get english {
    return Intl.message('English', name: 'english', desc: '', args: []);
  }

  /// `'Must have at least 8 characters`
  String get must_have {
    return Intl.message(
      '\'Must have at least 8 characters',
      name: 'must_have',
      desc: '',
      args: [],
    );
  }

  /// `Please enter password`
  String get p_password {
    return Intl.message(
      'Please enter password',
      name: 'p_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter valid password`
  String get valid_pass {
    return Intl.message(
      'Enter valid password',
      name: 'valid_pass',
      desc: '',
      args: [],
    );
  }

  /// `Please enter email`
  String get p_email {
    return Intl.message(
      'Please enter email',
      name: 'p_email',
      desc: '',
      args: [],
    );
  }

  /// `Enter valid email`
  String get valid_email {
    return Intl.message(
      'Enter valid email',
      name: 'valid_email',
      desc: '',
      args: [],
    );
  }

  /// `Recover Password`
  String get recover_password {
    return Intl.message(
      'Recover Password',
      name: 'recover_password',
      desc: '',
      args: [],
    );
  }

  /// `Send Reset Link`
  String get send_reset {
    return Intl.message(
      'Send Reset Link',
      name: 'send_reset',
      desc: '',
      args: [],
    );
  }

  /// `e.g. johndoe@example.com`
  String get ex {
    return Intl.message(
      'e.g. johndoe@example.com',
      name: 'ex',
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
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
