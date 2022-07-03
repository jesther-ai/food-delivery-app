import 'package:flutter/material.dart';
import 'package:food_app_delivery/devices/utilities/hex_color.dart';
import 'package:food_app_delivery/themes/animation.dart';
import 'package:food_app_delivery/widgets/home_app_bar.dart';
import 'package:food_app_delivery/widgets/promo_card.dart';
import 'package:food_app_delivery/widgets/title_card.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const HomeAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(right: 25, left: 25),
        child: Column(
          children: [
            const SizedBox(height: 20),
            FoodAppAnimation(
              position: 5,
              child: Text(
                'Lets find your best favorite food!',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: HexColor('#46474B'),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const PromoCard(position: 6),
            const SizedBox(height: 20),
            const PopularSection(position: 7),
          ],
        ),
      ),
    );
  }
}

class PopularSection extends StatelessWidget {
  const PopularSection({
    required this.position,
    Key? key,
  }) : super(key: key);
  final int position;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TitleCard(
          title: 'Popular',
          desc: 'See the most popular food on order',
        ),
      ],
    );
  }
}
