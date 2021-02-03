import 'package:flutter/material.dart';

import '../pages/auth/login.dart';
import '../pages/dashboard.dart';
import '../pages/splash.dart';
import '../util/transition.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/WelcomePage':
        return fadeAnimation(DashboardPage());
      case '/LoginPage':
        return fadeAnimation(LoginPage());
      default:
        return fadeAnimation(
          SplashScreen(),
        );
    }
  }
}
