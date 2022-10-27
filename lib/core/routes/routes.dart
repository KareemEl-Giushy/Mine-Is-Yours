import 'package:flutter/material.dart';
import 'package:mus_app/core/flutter_flow/flutter_flow.dart';
import 'package:mus_app/pages/auth/create_account_screen.dart';
import 'package:mus_app/pages/auth/forget_password_screen.dart';
import 'package:mus_app/pages/get_started_screen.dart';
import 'package:mus_app/pages/auth/login_screen.dart';
import 'package:mus_app/pages/home.dart';

class Routes {
  static const login = "/";
  static const createAccount = "/signup";
  static const forgetPassword = "/forget-password";
  static const onBoarding = "/onboarding";
  static const home = "/home";
}

class RouterGenerator {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        return PageTransition(
            child: const LoginScreen(), type: PageTransitionType.fade);
      case Routes.onBoarding:
        return PageTransition(
            child: const GetStartedScreen(), type: PageTransitionType.fade);
      case Routes.createAccount:
        return PageTransition(
            child: const CreateAccountScreen(),
            type: PageTransitionType.leftToRight);
      case Routes.forgetPassword:
        return PageTransition(
            child: const ForgetPasswordScreen(),
            type: PageTransitionType.bottomToTop);
      case Routes.home:
        return PageTransition(
            child: const HomeScreen(), type: PageTransitionType.fade);
      default:
        return MaterialPageRoute(
          builder: ((context) => const GetStartedScreen()),
        );
    }
  }
}
