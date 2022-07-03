import 'package:flutter/material.dart';
import 'package:food_app_delivery/widgets/welcome_footer.dart';
import 'package:food_app_delivery/widgets/welcome_header.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              WelcomeHeader(),
              WelcomeFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
