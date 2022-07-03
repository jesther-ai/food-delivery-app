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
      duration: const Duration(milliseconds: 1000),
      child: FadeInAnimation(
        child: child,
      ),
    );
  }
}

class FoodAppAnimation1 extends StatelessWidget {
  const FoodAppAnimation1({
    required this.position,
    required this.child,
    Key? key,
  }) : super(key: key);
  final int position;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      position: position,
      duration: const Duration(milliseconds: 750),
      child: SlideAnimation(
        verticalOffset: 750,
        child: child,
      ),
    );
  }
}
