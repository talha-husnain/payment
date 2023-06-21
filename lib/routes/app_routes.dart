import 'package:flutter/material.dart';
import 'package:payment/presentation/dashboard_container_screen/dashboard_container_screen.dart';
import 'package:payment/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String dashboardPage = '/dashboard_page';

  static const String dashboardContainerScreen = '/dashboard_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        dashboardContainerScreen: DashboardContainerScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: DashboardContainerScreen.builder
      };
}
