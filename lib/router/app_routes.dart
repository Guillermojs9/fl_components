import 'package:fl_components/models/menu_option.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = "home";

  static final MenuOptions = <MenuOption>[
    MenuOption(
        route: "home",
        icon: Icons.home_max_sharp,
        name: "Home Screen",
        screen: const HomeScreen()),
    MenuOption(
        route: "listview1",
        icon: Icons.list_alt,
        name: "ListView tipo 1",
        screen: const Listview1Screen()),
    MenuOption(
        route: "listview2 tipo 2",
        icon: Icons.list,
        name: "ListView2",
        screen: const Listview2Screen()),
    MenuOption(
        route: "alert",
        icon: Icons.add_alert_outlined,
        name: "Alertas",
        screen: const AlertScreen()),
    MenuOption(
        route: "card",
        icon: Icons.home_max_sharp,
        name: "tarjetas - Card",
        screen: const CardScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in MenuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
