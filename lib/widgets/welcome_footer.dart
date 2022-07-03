import 'package:flutter/material.dart';
import 'package:food_app_delivery/devices/utilities/hex_color.dart';
import 'package:food_app_delivery/providers/welcome_provider.dart';
import 'package:food_app_delivery/themes/animation.dart';
import 'package:food_app_delivery/widgets/primary_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WelcomeFooter extends StatelessWidget {
  const WelcomeFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    Provider.of<WelcomeProvider>(context, listen: false).init();
    return Container(
      height: 300,
      width: double.infinity,
      color: Colors.transparent,
      child: Consumer<WelcomeProvider>(builder: (context, value, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            FoodAppAnimation(
              position: 7,
              child: Text(
                'Don\'t Wanna Make\nYou Have A Bad Day',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 26,
                  color: HexColor('#46474B'),
                ),
              ),
            ),
            const SizedBox(height: 10),
            FoodAppAnimation(
              position: 8,
              child: Text(
                'Our job is delivering a delicious food\nwith fast, free delivery and easy',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: HexColor('#797979'),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: PrimaryButton(
                position: 2,
                state: value.home,
                label: 'Home',
                height: 55,
                width: width,
                action: () {
                  value.setHomeButton();
                },
              ),
            ),
          ],
        );
      }),
    );
  }
}
