import 'package:flutter/material.dart';
import 'package:food_app_delivery/screens/navigation_bar_screen.dart';

class ActiveRoutes {
  static Map<String, Widget Function(BuildContext)> list = {
    NavScreen.routeName: (context) => const NavScreen(),
  };
}
