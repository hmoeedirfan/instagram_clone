// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/bubblestories.dart';
import 'package:instagram_clone/utils/explore_grid.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Account extends StatelessWidget {
  Account({super.key});

  final List<Widget> tabs = [
    // posts tab
    Tab(
      child: Icon(
        Icons.grid_on_rounded,
        color: Colors.black,
      ),
    ),
    // reels tab
    Tab(
      child: SvgPicture.asset(
        'assets/icons/ic_insta_video.svg',
        height: 25,
        color: Colors.black,
      ),
    ),
    // contacts tab

    Tab(
      child: Icon(
        Icons.perm_contact_calendar_sharp,
        color: Colors.black,
      ),
    ),
  ];

  final List<Widget> TabBarViews = const [
    ExploreGrid(),
    ExploreGrid(),
    ExploreGrid(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // Appbar
        appBar: AppBar(
          titleSpacing: -10,
          leading: const Icon(
            Icons.lock,
            color: Colors.black,
          ),
          title: const Text(
            'alisrth23',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_box_outlined,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ],
        ),
        // Body
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile pic, details
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Profile pic
                      CircleAvatar(
                        backgroundColor: Colors.pink,
                        radius: 50,
                      ),
                      // no of posts, followers, followings
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '87',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  'Posts',
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '233',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  'Followers',
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '12',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  'Followings',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                // Name and bio
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ali Imran',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8, bottom: 12),
                        child: Text(
                          'The best way to live life is to live.',
                        ),
                      ),
                    ],
                  ),
                ),
                // Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffEFEFEF),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 46,
                            ),
                            child: Text(
                              'Edit Profile',
                              style: TextStyle(
                                letterSpacing: .4,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffEFEFEF),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 46,
                            ),
                            child: Text(
                              'Share Profile',
                              style: TextStyle(
                                letterSpacing: .4,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Stories
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      BubbleStories(text: 'Story 1'),
                      BubbleStories(text: 'Story 2'),
                      BubbleStories(text: 'Story 3'),
                      BubbleStories(text: 'Story 4'),
                      BubbleStories(text: 'Story 5'),
                    ],
                  ),
                )
              ],
            ),
            //tabbar
            TabBar(tabs: tabs),
            // tabbar view
            SizedBox(
              height: 1000,
              child: TabBarView(children: TabBarViews),
            ),
          ],
        ),
      ),
    );
  }
}
