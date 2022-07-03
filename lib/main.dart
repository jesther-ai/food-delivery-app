import 'package:flutter/material.dart';
import 'package:food_app_delivery/devices/all_active_providers.dart';
import 'package:food_app_delivery/screens/home_screen.dart';
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
        title: 'Food App Delivery',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}
