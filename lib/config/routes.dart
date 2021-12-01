import 'package:flutter/material.dart';
import 'package:sample/ui/screens/screens.dart';

class Routes {
  static const String initial = '/';
  static const String landing = '/landing';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case initial:
        return _getPageRoute(
          routeName: settings.name!,
          viewToShow: const SplashScreen(),
        );
        
      case landing:
        return _getPageRoute(
          routeName: settings.name!,
          viewToShow: const LandingScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }

  static PageRoute _getPageRoute({
    required String routeName,
    required Widget viewToShow,
  }) {
    return MaterialPageRoute(
      settings: RouteSettings(
        name: routeName,
      ),
      builder: (_) => viewToShow,
    );
  }
}
