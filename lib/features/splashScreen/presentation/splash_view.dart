import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:tiger_development/features/loginScreen/presentation/login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    goToNextView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Image.asset('assets/images/splash image.png')),
    );
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 3), () {
      Get.off(
        () => LoginView(),
        transition: Transition.fade,
        duration: const Duration(seconds: 1),
      );
    });
  }
}
