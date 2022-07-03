import 'package:food_app_delivery/providers/navigation_bar_provider.dart';
import 'package:food_app_delivery/providers/welcome_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ActiveProviders {
  static List<SingleChildWidget> list = [
    ChangeNotifierProvider<WelcomeProvider>(
      create: (context) => WelcomeProvider(),
    ),
    ChangeNotifierProvider<NavigationBarProvider>(
      create: (context) => NavigationBarProvider(),
    ),
  ];
}
