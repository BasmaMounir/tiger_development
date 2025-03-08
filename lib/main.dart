import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:tiger_development/core/localization/language_provider.dart';
import 'package:tiger_development/features/splashScreen/presentation/splash_view.dart';
import 'package:tiger_development/generated/l10n.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => LanguageProvider(),
      child: const TigerDevelopment(),
    ),
  );
}

class TigerDevelopment extends StatelessWidget {
  const TigerDevelopment({super.key});

  @override
  Widget build(BuildContext context) {
    final languageProvider = Provider.of<LanguageProvider>(context);
    return GetMaterialApp(
      locale: languageProvider.locale,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
