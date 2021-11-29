import 'package:app/screens/my_bib_screen.dart';
import 'package:app/screens/subscribe_screen.dart';
import 'package:flutter/material.dart';
import 'package:app/mycard.dart';
import 'package:app/screens/detail_screen.dart';
import 'package:app/screens/reserver.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
        routes: {
          DetailsScreen.routeName: (context) => DetailsScreen(),
          Reserver.routeName: (context) => const Reserver(),
          SubsscribeScreen.routePat: (context) => const SubsscribeScreen(),
          Mybib.routePath: (context) => const Mybib(),
        });
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movies"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Mybib.routePath);
            },
            icon: Icon(Icons.clear_all_outlined),
          )
        ],
      ),
      body: Column(
        children: [
          MyCard("assets/images/dmc5.jpg", "200 TND", "Devil My Cry 5"),
          MyCard("assets/images/minecraft.jpg", "200 TND", "Resident Evil"),
          MyCard("assets/images/rdr2.jpg", "150 TND", "Read Dead Redemption"),
          MyCard("assets/images/nfs.jpg", "100 TND", "Need For Speed"),
          MyCard("assets/images/fifa.jpg", "150 TND", "FiFa 2020"),
        ],
      ),
    );
  }
}
