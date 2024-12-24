import 'package:ecomerce_app/apphelpers/apphelper.dart';
import 'package:ecomerce_app/bloc/special_bloc.dart';
import 'package:ecomerce_app/repository/special_repo.dart';
import 'package:ecomerce_app/screens/Details/details_screen.dart';
import 'package:ecomerce_app/screens/Home/Widget/custom_card.dart';
import 'package:ecomerce_app/screens/Home/Widget/home_appbar.dart';
import 'package:ecomerce_app/screens/Home/Widget/image_slider.dart';
import 'package:ecomerce_app/screens/Home/Widget/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SpecialBloc>(
      create: (context) {
        final specialBloc = SpecialBloc(SpecialRepo());
        specialBloc.add(FetchSpecial());
        return specialBloc; // Return the bloc instance
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: BlocBuilder<SpecialBloc, SpecialState>(
              builder: (context, state) {
                if (state is SpecialLoading) {
                  // log("if lodinh state");
                  return const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [CircularProgressIndicator()],
                  );
                } else if (state is SpecialSuccess) {
                  if (state.specialModel.isEmpty) {
                    return const Center(child: Text("No specials available."));
                  }
                  // log("if suceess ui");
                  return Column(
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

                      // SpecialItems(

                      // ),

                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.specialModel.length,
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                          specialItem: null,
                                        )));
                          },
                          child: CustomCard(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.2,
                            title: state.specialModel[index].title ?? "",
                            imagepath: state.specialModel[index].image ?? "",
                            price: state.specialModel[index].price ?? "",
                          ),
                        ),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                          mainAxisExtent: 180,
                        ),
                      ),
                    ],
                  );
                } else if (state is SpecialError) {
                  //log("if error state ui");
                  return Text(state.message);
                } else {
                  return const Text("Data not found!");
                }
              },
            ),
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

// class SpecialItems extends StatelessWidget {
//   final String title;
//   final int itemLength;
//   const SpecialItems(
//       {super.key, required this.title, required this.itemLength});

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       itemCount: itemLength,
//       itemBuilder: (context, index) => InkWell(
//         onTap: () {
//           // Navigator.push(context,
//           //     MaterialPageRoute(builder: (context) => DetailsScreen()));
//         },
//         child: CustomCard(
//           title: title,
//           height: 20,
//           width: MediaQuery.of(context).size.width,
//           imagepath: "assets/img/men-removebg-preview.png",
//         ),
//       ),
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         mainAxisSpacing: 20,
//         crossAxisSpacing: 20,
//         mainAxisExtent: 180,
//       ),
//     );
//   }
// }
