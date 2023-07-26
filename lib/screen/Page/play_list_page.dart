import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayListPage extends StatefulWidget {
  const PlayListPage({super.key});

  @override
  State<PlayListPage> createState() => _PlayListPageState();
}

class _PlayListPageState extends State<PlayListPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    // Navigator.pop(context);
                  },
                  child: const Icon(
                    CupertinoIcons.back,
                    color: Color(0xFF899CCF),
                    size: 30,
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.more_vert,
                    color: Color(0xFF899CCF),
                    size: 30,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}