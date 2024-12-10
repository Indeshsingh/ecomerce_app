import 'package:ecomerce_app/apphelpers/apphelper.dart';
import 'package:ecomerce_app/screens/Details/details_screen.dart';
import 'package:ecomerce_app/screens/Home/Widget/custom_card.dart';
import 'package:ecomerce_app/screens/Home/Widget/home_appbar.dart';
import 'package:ecomerce_app/screens/Home/Widget/image_slider.dart';
import 'package:ecomerce_app/screens/Home/Widget/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 35,
              ),

              // for custom appbar
              const Customwidget(),
              const SizedBox(
                height: 20,
              ),
              // for searchbar
              const MysearchBar(),
              const SizedBox(
                height: 20,
              ),
              ImageSlider(),
              const SizedBox(
                height: 10,
              ),
              const RowItems(),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Special For You",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SpecialItems(),
            ],
          ),
        ),
      ),
    );
  }
}

class RowItems extends StatelessWidget {
  const RowItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
        6,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Container(
            // color: Colors.red,
            width: MediaQuery.of(context).size.width * 0.2,
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundImage: AssetImage(
                    Apphelper.categoryImage[index],
                  ),
                  //child:
                  //    SizedBox(height: 200, child: Text(Apphelper.categoryName[index])),
                ),
                Text(
                  Apphelper.categoryName[index],
                  maxLines: 1,
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}

class SpecialItems extends StatelessWidget {
  const SpecialItems({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 6,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const DetailsScreen()));
        },
        child: CustomCard(
          height: 20,
          width: MediaQuery.of(context).size.width,
          imagepath: "assets/img/men-removebg-preview.png",
        ),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        mainAxisExtent: 180,
      ),
    );
  }
}
