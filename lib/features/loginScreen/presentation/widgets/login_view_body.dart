import 'package:flutter/material.dart';
import 'package:tiger_development/core/utlis/widgets/language_switcher.dart';
import 'package:tiger_development/features/loginScreen/presentation/widgets/login_form.dart';
import 'package:tiger_development/features/loginScreen/presentation/widgets/scaffold_background.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ScaffoldBackground(),
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                margin: EdgeInsets.all(40),
                child: LoginForm(),
              ),
            ],
          ),
        ),
        Positioned(left: 140, bottom: 30, child: LanguageSwitcher()),
      ],
    );
  }
}
