import 'package:flutter/material.dart';

class Mybib extends StatelessWidget {
  static String routePath = "bib";
  static var likedImg = [];
  static var likedName = [];

  const Mybib({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Biblootcheque"),
        ),
        body: GridView.count(
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisCount: 2,
            // Generate 100 widgets that display their index in the List.
            children: List.generate(likedImg.length, (index) {
              return Center(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(likedImg[index]),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(likedName[index]),
                ],
              ));
            })));
  }
}
