import 'package:flutter/material.dart';
import 'package:food_app_delivery/devices/utilities/hex_color.dart';
import 'package:food_app_delivery/themes/animation.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewBadge extends StatelessWidget {
  const ReviewBadge({
    required this.position,
    Key? key,
  }) : super(key: key);
  final int position;
  @override
  Widget build(BuildContext context) {
    return FoodAppAnimation1(
      position: position,
      child: Container(
        height: 45,
        width: 95,
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 5),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 3,
              offset: Offset(1, 2),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/icon2.png',
            ),
            const SizedBox(width: 5),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Reviews',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400,
                    fontSize: 8,
                    color: HexColor('#CECECE'),
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  '160K+',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w700,
                    fontSize: 10,
                    color: HexColor('#000000'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
