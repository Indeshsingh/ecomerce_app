import 'package:ecomerce_app/screens/Home/Widget/detail_card.dart';
import 'package:ecomerce_app/screens/Home/Widget/tab_card.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: const DetailCard(),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(15),
                          topEnd: Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Waterproof Trouser",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const Text(
                          "Rs. 1300",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                  borderRadius: BorderRadius.circular(16)),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "4.6",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text("(320 Review)")
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Color",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: List.generate(
                              5,
                              (index) => IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.circle),
                                    iconSize: 40,
                                    color: Colors.black,
                                  )),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TabBar(
                          tabs: const [
                            TabCard(
                              text: "Description",
                            ),
                            TabCard(
                              text: "Specifications",
                            ),
                            TabCard(
                              text: "Reviews",
                            ),
                          ],
                          indicator: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(20)),
                          // indicatorSize: TabBarIndicatorSize.label,
                        ),
                        const Expanded(
                            child: TabBarView(children: [
                          Text(
                              "Wind/Waterproof Trouser for men having fur inside.."),
                          Text(
                            "Specifications go here.",
                          ),
                          Text(
                            "Customer reviews go here.",
                          ),
                        ]))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
