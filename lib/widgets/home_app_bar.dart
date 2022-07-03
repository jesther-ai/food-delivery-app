import 'package:flutter/material.dart';
import 'package:food_app_delivery/devices/utilities/hex_color.dart';
import 'package:food_app_delivery/themes/animation.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leadingWidth: 70,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: FoodAppAnimation(
          position: 0,
          child: Image.asset('assets/images/profilePicture.png'),
        ),
      ),
      actions: [
        FoodAppAnimation(
          position: 1,
          child: Image.asset(
            'assets/images/notificationIcon.png',
            height: 25,
            width: 25,
          ),
        ),
        const SizedBox(width: 10),
        FoodAppAnimation(
          position: 2,
          child: Image.asset(
            'assets/images/drawerIcon.png',
            height: 25,
            width: 25,
          ),
        ),
        const SizedBox(width: 20),
      ],
      centerTitle: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FoodAppAnimation2(
            position: 3,
            child: Text(
              'Deliver to',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: HexColor('#46474B'),
              ),
            ),
          ),
          FoodAppAnimation2(
            position: 4,
            child: Text(
              'Your Destination',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: HexColor('#46474B'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
