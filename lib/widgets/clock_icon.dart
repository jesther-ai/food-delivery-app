import 'package:flutter/material.dart';
import 'package:food_app_delivery/themes/animation.dart';

class ClockIcon extends StatelessWidget {
  const ClockIcon({
    required this.position,
    Key? key,
  }) : super(key: key);
  final int position;
  @override
  Widget build(BuildContext context) {
    return FoodAppAnimation1(
      position: position,
      child: Image.asset(
        'assets/images/clock.png',
        height: 55,
        width: 55,
      ),
    );
  }
}
