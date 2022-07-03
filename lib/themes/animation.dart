import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class FoodAppAnimation extends StatelessWidget {
  const FoodAppAnimation({
    required this.position,
    required this.child,
    Key? key,
  }) : super(key: key);
  final Widget child;
  final int position;
  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      position: position,
      duration: const Duration(milliseconds: 550),
      child: FadeInAnimation(
        child: child,
      ),
    );
  }
}
