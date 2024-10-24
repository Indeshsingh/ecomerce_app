import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 220,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
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
        )
      ],
    );
  }
}
