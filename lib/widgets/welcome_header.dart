import 'package:flutter/material.dart';
import 'package:food_app_delivery/themes/animation.dart';
import 'package:food_app_delivery/widgets/clock_icon.dart';
import 'package:food_app_delivery/widgets/courier_badge.dart';
import 'package:food_app_delivery/widgets/review_badge.dart';
import 'package:food_app_delivery/widgets/review_comments.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.transparent,
      padding: const EdgeInsets.only(top: 20),
      child: Stack(
        alignment: Alignment.center,
        children: [
          FoodAppAnimation(
            position: 0,
            child: Image.asset(
              'assets/images/Main.png',
              width: 380,
              height: 480,
            ),
          ),
          const Positioned(
            top: 95,
            left: 10,
            child: ClockIcon(
              position: 1,
            ),
          ),
          const Positioned(
            top: 10,
            left: 55,
            child: CourierBadge(
              position: 2,
            ),
          ),
          const Positioned(
            top: 15,
            right: 45,
            child: ReviewBadge(
              position: 3,
            ),
          ),
          Positioned(
            top: 75,
            right: 15,
            child: FoodAppAnimation1(
              position: 4,
              child: Image.asset(
                'assets/images/icon3.png',
                height: 35,
                width: 35,
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            child: ReviewsComments(
              position: 5,
            ),
          )
        ],
      ),
    );
  }
}
