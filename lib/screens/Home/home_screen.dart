import 'package:ecomerce_app/screens/Home/Widget/home_appbar.dart';
import 'package:ecomerce_app/screens/Home/Widget/image_slider.dart';
import 'package:ecomerce_app/screens/Home/Widget/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35,
              ),

              // for custom appbar
              customwidget(),
              SizedBox(
                height: 20,
              ),
              // for searchbar
              MysearchBar(),
              SizedBox(
                height: 20,
              ),
              ImageSlider(),
            ],
          ),
        ),
      ),
    );
  }
}
