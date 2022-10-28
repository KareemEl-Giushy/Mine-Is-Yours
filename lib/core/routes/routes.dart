import 'package:flutter/material.dart';
import 'package:mus_app/core/flutter_flow/flutter_flow.dart';
import 'package:mus_app/pages/auth/create_account_screen.dart';
import 'package:mus_app/pages/auth/forget_password_screen.dart';
import 'package:mus_app/pages/drawer/about_us.dart';
import 'package:mus_app/pages/drawer/my_exchanges.dart';
import 'package:mus_app/pages/drawer/offers.dart';
import 'package:mus_app/pages/drawer/recommendations.dart';
import 'package:mus_app/pages/get_started_screen.dart';
import 'package:mus_app/pages/auth/login_screen.dart';
import 'package:mus_app/pages/home.dart';
import 'package:mus_app/pages/payment.dart';
import 'package:mus_app/pages/profile/complete_profile.dart';
import 'package:mus_app/pages/profile/my_profile.dart';

class Routes {
  static const login = "/";
  static const createAccount = "/signup";
  static const forgetPassword = "/forget-password";
  static const onBoarding = "/onboarding";
  static const home = "/home";
  static const myProfile = "/profile";
  static const completeProfile = "/complete-profile";
  static const aboutUs = "/about-us";
  static const myExchanges = "/exchanges";
  static const offers = "/offers";
  static const recommendation = "/recommendation";
  static const payment = "/payment";
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
      case Routes.myProfile:
        return PageTransition(
            child: const MyProfileScreen(),
            type: PageTransitionType.leftToRight);
      case Routes.completeProfile:
        return PageTransition(
            child: const CompleteProfileScreen(),
            type: PageTransitionType.bottomToTop);
      case Routes.aboutUs:
        return PageTransition(
            child: const AboutUsScreen(), type: PageTransitionType.leftToRight);
      case Routes.myExchanges:
        return PageTransition(
            child: const MyExchangesScreen(),
            type: PageTransitionType.leftToRight);
      case Routes.offers:
        return PageTransition(
            child: const OffersScreen(), type: PageTransitionType.leftToRight);
      case Routes.recommendation:
        return PageTransition(
            child: const RecommendationScreen(),
            type: PageTransitionType.leftToRight);
      case Routes.payment:
        return PageTransition(
            child: const PaymentScreen(), type: PageTransitionType.bottomToTop);
      default:
        return MaterialPageRoute(
          builder: ((context) => const GetStartedScreen()),
        );
    }
  }
}
