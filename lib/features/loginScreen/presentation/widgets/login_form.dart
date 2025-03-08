import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:tiger_development/core/utlis/validations.dart';
import 'package:tiger_development/core/utlis/widgets/custom_button.dart';
import 'package:tiger_development/core/utlis/widgets/custom_input_field.dart';
import 'package:tiger_development/features/homeScreen/presentation/home_view.dart';
import 'package:tiger_development/features/loginScreen/presentation/forgot_password_view.dart';
import 'package:tiger_development/generated/l10n.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginForm> {
  GlobalKey<FormState> key = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool checkBox = false, obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Text(S.of(context).login, style: TextStyle(fontSize: 30))),
          SizedBox(height: 30),
          CustomInputField(
            title:S.of(context).email,
            hintText: S.of(context).email,
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
          CustomInputField(
            validator: (password) {
              if (password!.isEmpty || password.trim().isEmpty) {
                return  S.of(context).p_password;
              }
              if (!Validations.isValidPassword(password)) {
                return S.of(context).valid_pass;
              }
              return null;
            },
            title: S.of(context).password,
            controller: passwordController,
            hintText:  S.of(context).must_have,
            isPassword: obscureText,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
              icon: Icon(
                obscureText ? Icons.visibility_off_rounded : Icons.visibility,
              ),
            ),
          ),
      
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForgotPasswordView()),
              );
            },
            child: Text(
              S.of(context).forgot_password,
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.blueGrey,
              ),
            ),
          ),
      
          Row(
            children: [
              Checkbox(
                value: checkBox,
                onChanged: (value) {
                  setState(() {
                    checkBox = value!;
                  });
                },
              ),
              Text(S.of(context).stay_logged_in, style: TextStyle(fontSize: 15)),
            ],
          ),
          CustomButton(
            buttonTitle: S.of(context).login,
            onPressed: () {
              if (key.currentState!.validate()) {
                Get.offAll(() => HomeView());

                emailController.clear();
                passwordController.clear();
              }
            },
          ),
        ],
      ),
    );
  }
}
