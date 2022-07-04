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
      duration: const Duration(milliseconds: 500),
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
        verticalOffset: 1500,
        child: child,
      ),
    );
  }
}

class FoodAppAnimation2 extends StatelessWidget {
  const FoodAppAnimation2({
    required this.position,
    required this.child,
    this.milliseconds,
    this.horizontalOffset,
    Key? key,
  }) : super(key: key);
  final int position;
  final Widget child;
  final int? milliseconds;
  final double? horizontalOffset;
  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      position: position,
      duration: Duration(milliseconds: milliseconds ?? 750),
      child: SlideAnimation(
        horizontalOffset: horizontalOffset ?? 750,
        child: child,
      ),
    );
  }
}
