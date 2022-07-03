import 'package:flutter/material.dart';
import 'package:food_app_delivery/devices/utilities/hex_color.dart';
import 'package:food_app_delivery/themes/animation.dart';
import 'package:google_fonts/google_fonts.dart';

class CourierBadge extends StatelessWidget {
  const CourierBadge({
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
        width: 120,
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 3,
              offset: Offset(1, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/icon1.png',
            ),
            const SizedBox(width: 5),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'John Smith',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                    color: HexColor('#222224'),
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  'Courier Faster',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400,
                    fontSize: 8,
                    color: HexColor('#222224'),
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
