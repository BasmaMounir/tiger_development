import 'package:flutter/material.dart';
import 'package:tiger_development/features/loginScreen/presentation/widgets/login_appBar.dart';
import 'package:tiger_development/features/loginScreen/presentation/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xffcbc0f0), title: LoginAppbar()),

      body:const LoginViewBody(),
    );
  }
}
