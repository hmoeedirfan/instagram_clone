import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/reels_posts.dart/post1.dart';
import 'package:instagram_clone/pages/reels_posts.dart/post2.dart';
import 'package:instagram_clone/pages/reels_posts.dart/post3.dart';

class Reels extends StatelessWidget {
  Reels({super.key});

  final _controller = PageController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: const [
          Post1(),
          Post2(),
          Post3(),
        ],
      ),
    );
  }
}
