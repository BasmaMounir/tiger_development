import 'package:flutter/material.dart';
import 'package:tiger_development/generated/l10n.dart';
class LoginAppbar extends StatelessWidget {
  const LoginAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/tiger logo.png', width: 50, height: 50),
        Text(S.of(context).app_title),
      ],
    );
  }
}
