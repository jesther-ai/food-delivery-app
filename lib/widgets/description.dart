import 'package:flutter/material.dart';
import 'package:food_app_delivery/devices/utilities/hex_color.dart';
import 'package:google_fonts/google_fonts.dart';

class Descriptions extends StatelessWidget {
  const Descriptions({
    Key? key,
    required this.value,
    this.fontSize,
    this.fontWeight,
    this.hexColor,
  }) : super(key: key);

  final String value;
  final FontWeight? fontWeight;
  final double? fontSize;
  final String? hexColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Text(
        value,
        style: GoogleFonts.poppins(
          fontWeight: fontWeight ?? FontWeight.w600,
          fontSize: fontSize ?? 14,
          color: HexColor(hexColor ?? '#46474B'),
        ),
      ),
    );
  }
}
