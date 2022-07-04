import 'package:flutter/material.dart';
import 'package:food_app_delivery/themes/animation.dart';
import 'package:food_app_delivery/widgets/description.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({
    Key? key,
    required this.position,
    required this.width,
    required this.name,
    required this.desc,
    required this.price,
    required this.imageUrl,
  }) : super(key: key);
  final int position;
  final double width;
  final String name;
  final String desc;
  final double price;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return FoodAppAnimation(
      position: position,
      child: Container(
        width: width * 0.50,
        margin: const EdgeInsets.only(left: 25, top: 5, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
              offset: Offset(1, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(imageUrl),
            ),
            const SizedBox(height: 5),
            Descriptions(value: name),
            const SizedBox(height: 3),
            Descriptions(
              value: desc,
              fontWeight: FontWeight.w500,
              fontSize: 10,
              hexColor: '#C7C5C5',
            ),
            const SizedBox(height: 3),
            Row(
              children: [
                Descriptions(
                  value: '₱$price',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  hexColor: '#46474B',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
