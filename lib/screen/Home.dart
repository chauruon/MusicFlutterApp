import 'package:flutter/material.dart';
import 'package:my_music/component/TabBarView/tab_music.dart';
import 'package:my_music/component/TabBarView/tab_playlists.dart';

import '../component/TabBarView/tab_favourites.dart';
import '../ultils/styles.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 6,
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xFF303151).withOpacity(0.6),
              const Color(0xFF303151).withOpacity(0.9),
            ]
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 10,left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:const EdgeInsets.only(right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.sort_rounded,
                            color: navyBlue,
                            size: 30,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.more_vert,
                            color: Color(0xFF899CCF),
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      "ASDJKFH ",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      "Mày muốn nghe cái quần què gì đây?",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5 ),
                        fontSize: 16,
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,right: 10,bottom: 10),
                    child: Container(
                      height: 50,
                      width: width,
                      decoration: BoxDecoration(
                        color: const Color(0xFF31314F).withOpacity(0.9),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 15),
                            height: 50,
                            width: width - 90,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Search....",
                                hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                border: InputBorder.none
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Icon(
                              Icons.search,
                              size: 30,
                              color: Colors.white.withOpacity(0.5),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const TabBar(
                    isScrollable: true,
                    labelStyle: TextStyle(
                      fontSize: 18,
                    ),
                    indicator: BoxDecoration(
                      border: Border(bottom: BorderSide(width: 3,color: Color(0xFF899CCF)))
                    ),
                    tabs: [
                      Tab(text: "Music",),
                      Tab(text: "Playlists",),
                      Tab(text: "Favourites",),
                      Tab(text: "Trending",),
                      Tab(text: "Collections",),
                      Tab(text: "New",),
                    ],
                  ),
                  Flexible(
                    flex: 1,
                    child: TabBarView(
                      children: [
                        const TabMusic(),
                        const TabPlaylists(),
                        const TabFavourites(),
                        Container(
                          color: Colors.blue,
                        ),
                        Container(
                          color: Colors.red,
                        ),
                        Container(
                          color: Colors.pink,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}