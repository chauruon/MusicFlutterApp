import 'package:flutter/material.dart';
import 'package:my_music/component/header/header.dart';

class PlayListPage extends StatefulWidget {
  const PlayListPage({super.key});

  @override
  State<PlayListPage> createState() => _PlayListPageState();
}

class _PlayListPageState extends State<PlayListPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0xFF303151).withOpacity(0.6),
            const Color(0xFF303151).withOpacity(0.9),
          ]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisSize: MainAxisSize.max,
            children: const [
              Header(
                stateBack: true,
              ),
            ],
          ),
      ),
    );
  }
}