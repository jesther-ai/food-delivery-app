import 'package:flutter/material.dart';
import 'package:food_app_delivery/devices/all_active_providers.dart';
import 'package:food_app_delivery/devices/all_active_routes.dart';
import 'package:food_app_delivery/screens/welcome_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: ActiveProviders.list,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food App Delivery',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const WelcomeScreen(),
        routes: ActiveRoutes.list,
      ),
    );
  }
}
