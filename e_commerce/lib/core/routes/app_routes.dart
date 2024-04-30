import 'package:e_commerce/core/common/screens/under_build.dart';
import 'package:e_commerce/core/routes/base_route.dart';
import 'package:e_commerce/core/test_one_screen.dart';
import 'package:e_commerce/core/test_two_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String testOne = 'testOne';
  static const String testTwo = 'testTwo';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case testOne:
        return BaseRoute(page: TestOneScreen());
      case testTwo:
        return BaseRoute(page: TestTwoScreen());

      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}