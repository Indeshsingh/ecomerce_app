import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageSlider extends StatelessWidget {
  ImageSlider({super.key});

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: 220,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              physics: const ClampingScrollPhysics(),
              children: [
                Image.asset(
                  "assets/img/slider.png",
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  "assets/img/slider1.jpg",
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  "assets/img/slider2.jpg",
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
        ),
        // SmoothPageIndicator at the bottom
        Positioned(
          bottom: 10,
          child: SmoothPageIndicator(
            controller: _pageController, // PageController
            count: 3, // Number of pages
            effect: const ExpandingDotsEffect(
              activeDotColor: Colors.black,
              dotColor: Colors.grey,
              dotHeight: 8,
              dotWidth: 8,
              spacing: 8,
            ),
          ),
        ),
      ],
    );
  }
}
