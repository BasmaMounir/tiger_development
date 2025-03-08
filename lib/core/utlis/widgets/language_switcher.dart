import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiger_development/core/localization/language_provider.dart';
import 'package:tiger_development/generated/l10n.dart';

class LanguageSwitcher extends StatelessWidget {
  const LanguageSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    final languageProvider = Provider.of<LanguageProvider>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () => languageProvider.setLocale(const Locale('en')),
          child: Text(
            S.of(context).english,
            style: TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(width: 10),
        TextButton(
          onPressed: () => languageProvider.setLocale(const Locale('ar')),
          child: Text(
            S.of(context).arabic,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
