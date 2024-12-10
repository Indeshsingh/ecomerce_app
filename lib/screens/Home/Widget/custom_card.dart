import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String? imagepath;
  final double height;
  final double width;
  const CustomCard(
      {required this.height, required this.width, this.imagepath, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              // image: DecorationImage(image: AssetImage(imagepath ?? "")),
              color: const Color.fromARGB(26, 121, 117, 117),
              borderRadius: BorderRadius.circular(8)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(
              imagepath ?? "",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 2,
          right: 2,
          child: Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 51, 0),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8))),
            height: 33,
            width: 33,
            child: const Icon(Icons.favorite_border),
          ),
        )
      ],
    );
  }
}
