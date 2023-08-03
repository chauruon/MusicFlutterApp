import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Container(
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
              padding: const EdgeInsets.only(top: 20,left: 22),
              child: SingleChildScrollView(
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.sort_rounded,
                              color: Color(0xFF899CCF),
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
                    const SizedBox(height: 30,),
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
                      padding:const EdgeInsets.only(bottom: 5),
                      child: Text(
                        "Mày muốn nghe cái quần què gì đây?",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5 ),
                          fontSize: 16,
                        )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15,right: 20,bottom: 20),
                      child: Container(
                        height: 50,
                        width: 380,
                        decoration: BoxDecoration(
                          color: const Color(0xFF31314F).withOpacity(0.9),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin:const EdgeInsets.symmetric(horizontal: 15),
                              height: 50,
                              width: 200,
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
                              padding:const EdgeInsets.symmetric(horizontal: 10),
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
                        Tab(text: "music",),
                        Tab(text: "music",),
                        Tab(text: "music",),
                        Tab(text: "music",),
                        Tab(text: "music",),
                        Tab(text: "music",),
                      ],
                    ),
                    Flexible(
                      flex: 1,
                      child: TabBarView(
                        children: [
                          Container(color: Colors.red,),
                          Container(color: Colors.red,),
                          Container(color: Colors.red,),
                          Container(color: Colors.red,),
                          Container(color: Colors.red,),
                          Container(color: Colors.red,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      )
    );
  }
}