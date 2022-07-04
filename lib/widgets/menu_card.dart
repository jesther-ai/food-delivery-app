import 'package:flutter/material.dart';
import 'package:food_app_delivery/themes/animation.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({
    Key? key,
    required this.position,
    required this.width,
  }) : super(key: key);
  final int position;
  final double width;

  @override
  Widget build(BuildContext context) {
    return FoodAppAnimation(
      position: position,
      child: Container(
        width: width * 0.50,
        margin: const EdgeInsets.only(left: 25, top: 5, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 3,
              offset: Offset(1, 2),
            ),
          ],
        ),
      ),
    );
  }
}
