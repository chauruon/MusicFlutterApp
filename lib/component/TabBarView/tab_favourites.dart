import 'package:flutter/material.dart';

import '../gradient_shadow_image/gradient_shadow_image.dart';

class TabFavourites extends StatefulWidget {
  const TabFavourites({super.key});

  @override
  State<TabFavourites> createState() => _TabFavouritesState();
}

class _TabFavouritesState extends State<TabFavourites> {
  @override
  Widget build(BuildContext context) {
    return const GradientShadowImage(
        imageUrl: 'images/products/nhac.jpg',
        colorsGradient: [
          Colors.transparent,
          Color(0xFF30314D),

        ],
        stopAlign: [0, 1.2],
        network: false,
      );
  }
}