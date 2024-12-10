import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String? imagepath;
  final double? imagesize;
  final double height;
  final double width;
  const CustomCard(
      {required this.height,
      required this.width,
      this.imagepath,
      this.imagesize,
      super.key});

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: Image.asset(
                  imagepath ?? "",
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8))),
            height: 33,
            width: 33,
            child: const Icon(Icons.favorite_border),
          ),
        ),
        const Positioned(
            left: 5,
            bottom: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Waterproof Trouser"),
                Row(
                  children: [
                    Text(
                      "Rs. 1299",
                      style: TextStyle(color: Colors.orange),
                    )
                  ],
                )
              ],
            ))
      ],
    );
  }
}
