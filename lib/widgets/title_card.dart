import 'package:flutter/material.dart';
import 'package:food_app_delivery/devices/utilities/hex_color.dart';
import 'package:food_app_delivery/themes/animation.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({
    required this.title,
    required this.desc,
    required this.position,
    Key? key,
  }) : super(key: key);
  final String title;
  final String desc;
  final int position;
  @override
  Widget build(BuildContext context) {
    return FoodAppAnimation(
      position: position,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: HexColor('#46474B'),
                ),
              ),
              Text(
                'See All',
                style: GoogleFonts.poppins(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: HexColor('#EC994B'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            desc,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: HexColor('#46474B'),
            ),
          ),
        ],
      ),
    );
  }
}
