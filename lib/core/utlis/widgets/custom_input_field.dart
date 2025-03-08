import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String title;
  final String hintText;
  final IconButton? suffixIcon;
  final TextInputType keyboardType;
  final bool isPassword;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const CustomInputField({
    super.key,
    required this.title,
    required this.validator,
    this.suffixIcon,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.controller,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontSize: 15)),
        SizedBox(height: 10),
        TextFormField(
          validator: validator,
          controller: controller,
          keyboardType: keyboardType,
          obscureText: isPassword,
          decoration: InputDecoration(
            suffixIcon: suffixIcon ,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.blueGrey),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
