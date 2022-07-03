import 'package:flutter/material.dart';
import 'package:food_app_delivery/themes/animation.dart';

class PromoCard extends StatelessWidget {
  const PromoCard({
    required this.position,
    Key? key,
  }) : super(key: key);
  final int position;
  @override
  Widget build(BuildContext context) {
    return FoodAppAnimation2(
      position: position,
      child: Container(
        width: double.infinity,
        height: 169,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Image.asset('assets/images/promoCard.png'),
      ),
    );
  }
}
