import 'package:flutter/material.dart';
import 'package:template/app/dependencies.dart';


// STATIC ROUTE NAMES

// SPLASH / ON BOARDING
const String mainSplashScreen = '/main-splash-screen';
const String onBoardRoot = '/on-board-root';
const String onBoardWelcome1 = '/on-board-welcome-1';
const String onBoardWelcome2 = '/on-board-welcome-2';
const String onBoardWelcome3 = '/on-board-welcome-3';
const String chooseVehicleType = '/choose-vehicle-type';
const String exteriorScreen = '/exterior-screen';
const String interiorScreen = '/interior-screen';
const String filmScreen = '/film-screen';
const String paintProtectionScreen = '/paint-protection-screen';
const String productScreen = '/product-screen';
const String maintenanceScreen = '/maintenance-screen';
const String requestScreen = '/request-screen';
const String paymentMethodScreen = '/payment-method-screen';


class RouteGenerator {
  static Route<dynamic> onGeneratedRoutes(RouteSettings settings) {
    late dynamic args;
    if (settings.arguments != null) {
      args = settings.arguments as Map;
    }
    debugPrint(settings.name);
    switch (settings.name) {
      case mainSplashScreen:
        return _getPageRoute(const MainSplashScreen());

      case onBoardRoot:
        return _getPageRoute(const OnBoardRoot());

      case onBoardWelcome1:
        return _getPageRoute(const OnBoardWelcome1());

      case onBoardWelcome2:
        return _getPageRoute(const OnBoardWelcome2());

      case onBoardWelcome3:
        return _getPageRoute(const OnBoardWelcome3());

      // case authLoginScreen:
      //   return _getPageRoute(const AuthLoginScreen());

      // case stepperRoot:
      //   return _getPageRoute(const StepperRoot());
      // case customDrawer:
      //   return _getPageRoute(const CustomDrawer());

      default:
        return _errorRoute();
    }
  }

  // FUNCTION THAT HANDLES NAVIGATION
  static PageRoute _getPageRoute(Widget child) {
    return MaterialPageRoute(builder: (ctx) => child);
  }

  // 404 PAGE
  static PageRoute _errorRoute() {
    return MaterialPageRoute(builder: (ctx) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('404'),
        ),
        body: const Center(
          child: Text('ERROR 404: Not Found'),
        ),
      );
    });
  }
}
