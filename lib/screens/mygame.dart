import 'package:flutter/material.dart';

class mygame extends StatefulWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Biblootcheque"),
        )
    body: GridView.builder(gridDelegate: const SliverGrid(delegate: ,gridDelegate: gridDelegate),
     
      itemBuilder: itemBuilder)


    }
  
  
  }