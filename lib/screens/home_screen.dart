import 'package:flutter/material.dart';
import 'package:food_app_delivery/devices/utilities/hex_color.dart';
import 'package:food_app_delivery/providers/home_provider.dart';
import 'package:food_app_delivery/themes/animation.dart';
import 'package:food_app_delivery/widgets/by_section.dart';
import 'package:food_app_delivery/widgets/home_app_bar.dart';
import 'package:food_app_delivery/widgets/promo_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const HomeAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Consumer<HomeProvider>(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  FoodAppAnimation(
                    position: 5,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 25, left: 25),
                      child: Text(
                        'Lets find your best favorite food!',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: HexColor('#46474B'),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              builder: (context, value, child) {
                return Column(
                  children: [
                    child!,
                    const PromoCard(position: 6),
                    const SizedBox(height: 20),
                    const BySection(
                      position: 7,
                      title: 'Popular',
                      desc: 'See the most popular food on order',
                    ),
                    const SizedBox(height: 20),
                    const BySection(
                      position: 8,
                      title: 'New Menu',
                      desc: 'See the most popular food on order',
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
