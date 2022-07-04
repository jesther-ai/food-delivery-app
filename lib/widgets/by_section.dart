import 'package:flutter/material.dart';
import 'package:food_app_delivery/models/menu.dart';
import 'package:food_app_delivery/widgets/menu_card.dart';
import 'package:food_app_delivery/widgets/title_card.dart';

class BySection extends StatelessWidget {
  const BySection({
    required this.position,
    required this.title,
    required this.desc,
    required this.menu,
    Key? key,
  }) : super(key: key);
  final int position;
  final String title;
  final String desc;
  final List<Menu> menu;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 25, left: 25),
          child: TitleCard(
            position: position,
            title: title,
            desc: desc,
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: width,
          height: 250,
          child: ListView.builder(
            padding: const EdgeInsets.all(0),
            itemCount: menu.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return MenuCard(
                position: index + 7,
                width: width,
                name: menu[index].name,
                desc: menu[index].desc,
                price: menu[index].price,
                imageUrl: menu[index].imageUrl,
              );
            },
          ),
        ),
      ],
    );
  }
}
