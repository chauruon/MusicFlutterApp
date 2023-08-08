import 'package:flutter/material.dart';
import 'package:my_music/component/box_shadow/shadow_container.dart';

class TabTrending extends StatefulWidget {
  const TabTrending({super.key});

  @override
  State<TabTrending> createState() => _TabTrendingState();
}

class _TabTrendingState extends State<TabTrending> {
  @override
  Widget build(BuildContext context) {
    return const ShadowContainer(
      height: 10.0,
      color: Colors.white,
      child: Text("sadfkjh",style: TextStyle(
        backgroundColor: Colors.black
      )),
    );
  }
}