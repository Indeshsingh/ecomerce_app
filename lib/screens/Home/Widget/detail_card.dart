import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Center(
                child: PageView(
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset(
                      "assets/img/men-removebg-preview.png",
                      fit: BoxFit.contain,
                    ),
                    Image.asset(
                      "assets/img/men-removebg-preview.png",
                      fit: BoxFit.contain,
                    ),
                    Image.asset(
                      "assets/img/men-removebg-preview.png",
                      fit: BoxFit.contain,
                    ),
                    Image.asset(
                      "assets/img/men-removebg-preview.png",
                      fit: BoxFit.contain,
                    ),
                    Image.asset(
                      "assets/img/men-removebg-preview.png",
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 1,
                left: 5,
                child: IconButton(
                  style: IconButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              ),
              Positioned(
                top: 1,
                right: 50,
                child: IconButton(
                  style: IconButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {},
                  icon: const Icon(Icons.share_outlined),
                ),
              ),
              Positioned(
                top: 1,
                right: 5,
                child: IconButton(
                  style: IconButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border_rounded),
                ),
              ),
              Positioned(
                bottom: 10,
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: 5,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Colors.black,
                    dotColor: Colors.orange,
                    dotHeight: 8,
                    dotWidth: 8,
                    expansionFactor: 2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
