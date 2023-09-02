// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, sized_box_for_whitespace

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/utils/bubblestories.dart';
import 'package:instagram_clone/utils/user_post.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List people = ['Ali', 'Hamza', 'Saba', 'Taha', 'Obaid'];

  void signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: SvgPicture.asset('assets/icons/ic_instagram.svg', height: 30),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/ic_like.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/ic_messenger.svg'),
          ),
          IconButton(
            onPressed: () => signOut(),
            icon: Icon(
              Icons.logout,
              color: Colors.black,
            ),
          ),
        ],
      ),
      // Body
      body: ListView(
        children: [
          // Stories
          Container(
            height: 120,
            child: ListView.builder(
              itemCount: people.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return BubbleStories(text: people[index]);
              },
            ),
          ),
          // Post
          SizedBox(
            height: 3000,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: people.length,
              itemBuilder: (context, index) {
                return UserPost(text: people[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
