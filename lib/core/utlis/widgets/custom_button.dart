import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  void Function()? onPressed;
  String buttonTitle;
  CustomButton({super.key, required this.buttonTitle, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,

      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xff1d82f5),
        iconColor: Colors.white,
        iconSize: 20,
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(buttonTitle, style: TextStyle(fontSize: 20)),
          Icon(Icons.arrow_forward),
        ],
      ),
    );
  }
}
