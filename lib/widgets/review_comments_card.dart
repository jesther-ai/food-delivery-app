import 'package:flutter/material.dart';
import 'package:food_app_delivery/devices/utilities/hex_color.dart';
import 'package:food_app_delivery/themes/animation.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewCommentsCard extends StatelessWidget {
  const ReviewCommentsCard({
    required this.position,
    Key? key,
  }) : super(key: key);
  final int position;
  @override
  Widget build(BuildContext context) {
    return FoodAppAnimation(
      position: position,
      child: Container(
        height: 40,
        width: 230,
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
        padding: const EdgeInsets.only(left: 10, right: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/person1.png',
              height: 35,
              width: 35,
            ),
            const SizedBox(width: 5),
            Expanded(
              child: Text(
                '"When you are to lazy for cook, just clik and they will come quickly"',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 8,
                  color: HexColor('#9F9F9F'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
