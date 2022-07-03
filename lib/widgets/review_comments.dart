import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_app_delivery/widgets/review_comments_card.dart';

class ReviewsComments extends StatelessWidget {
  const ReviewsComments({
    required this.position,
    Key? key,
  }) : super(key: key);
  final int position;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 75,
      color: Colors.transparent,
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 55,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(milliseconds: 2500),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: false,
        ),
        itemCount: 15,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
          return ReviewCommentsCard(
            position: position + itemIndex,
          );
        },
      ),
    );
  }
}
