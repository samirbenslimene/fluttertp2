import 'package:app/screens/my_bib_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/screens/reserver.dart';

class DetailsScreen extends StatefulWidget {
  static String routeName = "details";

  DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final imgName = routeArgs['img'];
    final title = routeArgs['title'];
    final subTitle = routeArgs['sub'];
    bool isLiked = Mybib.likedImg.contains(imgName);

    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  if (isLiked) {
                    Mybib.likedImg
                        .removeWhere((element) => element == imgName!);
                    Mybib.likedName.removeWhere((element) => element == title);
                  } else {
                    Mybib.likedName.add(title);
                    Mybib.likedImg.add(imgName);
                  }
                  isLiked = !isLiked;
                });
              },
              icon: isLiked
                  ? const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : const Icon(
                      Icons.favorite_outline,
                      color: Colors.white,
                    ))
        ],
      ),
      body: Column(
        children: [
          Image.asset(imgName!),
          const Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
                "Le lorem ipsum  également appelé faux-texte, lipsum, ou bolo bolo1 est,  /n en imprimerie, une suite de mots sans signification utilisée à titre /n  provisoire pour calibrer une mise en page, le texte définitif venant remplacer le /n faux-texte dès qu'il est prêt ou que la mise en page est achevée. "),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            subTitle!,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Reserver.routeName, arguments: {
                "img": imgName,
              });
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              height: 50,
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.shopping_basket,
                    color: Colors.white,
                  ),
                  Text(
                    "Acheter",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
