import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My cart",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Stack(
              //alignment: Alignment.topRight,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 247, 235, 235),
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Image.asset(
                            "assets/img/electronics_-removebg-preview.png"),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Headphones",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Headphones",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Rs.1200",
                            style: TextStyle(color: Colors.orange),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.delete),
                      iconSize: 30,
                      color: Colors.orange,
                    )),
                Positioned(
                  bottom: 6,
                  right: 12,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.height * 0.14,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.remove),
                          iconSize: 18,
                          color: Colors.white,
                        ),
                        const Text(
                          '1',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                          iconSize: 18,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
