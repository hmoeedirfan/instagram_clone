// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/explore_grid.dart';
import 'package:instagram_clone/utils/search_box.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: SearchBox(),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 3000,
            child: ExploreGrid(),
          ),
        ],
      ),
    );
  }
}
