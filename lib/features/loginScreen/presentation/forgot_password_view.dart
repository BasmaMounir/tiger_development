import 'package:flutter/material.dart';
import 'package:tiger_development/core/utlis/validations.dart';
import 'package:tiger_development/core/utlis/widgets/custom_button.dart';
import 'package:tiger_development/core/utlis/widgets/custom_input_field.dart';
import 'package:tiger_development/core/utlis/widgets/language_switcher.dart';
import 'package:tiger_development/features/loginScreen/presentation/widgets/login_appBar.dart';
import 'package:tiger_development/features/loginScreen/presentation/widgets/scaffold_background.dart';
import 'package:tiger_development/generated/l10n.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  GlobalKey<FormState> key = GlobalKey();

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xffcbc0f0), title: LoginAppbar()),

      body: Stack(
        children: [
          ScaffoldBackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                margin: EdgeInsets.all(40),
                child: Form(
                  key: key,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                        child: Text(
                          S.of(context).recover_password,
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      SizedBox(height: 30),
                      CustomInputField(
                        title: S.of(context).email,
                        hintText: S.of(context).ex,
                        controller: emailController,
                        validator: (email) {
                          if (email!.isEmpty || email.trim().isEmpty) {
                            return S.of(context).p_email;
                          }
                          if (!Validations.isValidEmail(email)) {
                            return S.of(context).valid_email;
                          }
                          return null;
                        },
                      ),
          
                      CustomButton(
                        buttonTitle: S.of(context).send_reset,
                        onPressed: () {
                          if (key.currentState!.validate()) {
                            print('Validat');
                            emailController.clear();
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
              LanguageSwitcher(),
            ],
          ),
        ],
      ),
    );
  }
}
