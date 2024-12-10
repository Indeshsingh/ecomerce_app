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
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                //height: MediaQuery.of(context).size.height,
                color: Colors.grey,
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
                  top: 5,
                  child: Row(
                    children: [
                      IconButton(
                        style:
                            IconButton.styleFrom(backgroundColor: Colors.white),
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back_ios),
                      ),
                      const SizedBox(
                        width: 215,
                      ),
                      IconButton(
                        style:
                            IconButton.styleFrom(backgroundColor: Colors.white),
                        onPressed: () {},
                        icon: const Icon(Icons.share_outlined),
                      ),
                      IconButton(
                        style:
                            IconButton.styleFrom(backgroundColor: Colors.white),
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border_rounded),
                      ),
                    ],
                  )),
              Positioned(
                bottom: 10,
                // left: 140,
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
        const SizedBox(height: 10),
        const SizedBox(height: 10),
      ],
    );
  }
}
