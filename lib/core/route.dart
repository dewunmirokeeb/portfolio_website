import 'package:flutter/material.dart';

Route<RouteSettings> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    // case AboutPage.routeName:
    //   return MaterialPageRoute(
    //     builder: (_) => const AboutPage(),
    //     settings: routeSettings,
    //     fullscreenDialog: true,
    //   );
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(child: Text('Unknown route')),
        ),
      );
  }
}

NavigationService navigator = NavigationService();
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class NavigationService {
  Future<dynamic> pushReplaceMent(
      {required String routeName, dynamic argument}) {
    return navigatorKey.currentState!
        .pushReplacementNamed(routeName, arguments: argument);
  }

  Future<dynamic> push({required String routeName, dynamic argument}) {
    return navigatorKey.currentState!.pushNamed(routeName, arguments: argument);
  }

  Future<dynamic> pushAndRemoveUntil(
      {required String routeName, dynamic argument}) {
    return navigatorKey.currentState!.pushNamedAndRemoveUntil(
      routeName,
      (route) => false,
      arguments: argument,
    );
  }
}
