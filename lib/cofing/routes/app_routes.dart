


import 'package:flutter/material.dart';

import '../../core/utiles/app_components.dart';
import '../../features/book_detail_feature/pages/details_screen.dart';
import '../../features/home_feature/pages/home_screen.dart';
import '../../features/splash_screen/pages/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/';
  static const String homeScreen = 'Homes Screen';
  static const String detailsScreen = 'Details Screen';
  static const String searchScreen = 'Search Screen';

  static Route onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppRoutes.splashScreen:
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );

      case AppRoutes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case AppRoutes.detailsScreen:
        return MaterialPageRoute(
          builder: (context) => const DetailsScreen(),
        );



      default:
        return MaterialPageRoute(
          builder: (context) => AppComponents.unDefinedRoute(context),
        );
    }
  }
}
