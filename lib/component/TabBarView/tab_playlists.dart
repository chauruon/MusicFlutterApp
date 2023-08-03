import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:my_music/screen/Page/play_list_page.dart';

import '../gradient_shadow_image/gradient_shadow_image.dart';

class TabPlaylists extends StatefulWidget {
  const TabPlaylists({super.key});

  @override
  State<TabPlaylists> createState() => _TabPlaylistsState();
}

class _TabPlaylistsState extends State<TabPlaylists> {

  final List playList = [
    {
      "id":1,
      "name":"1",
      "title":"rrrrrr",
      "image": "images/products/nhac.jpg",
    },
    {
      "id":2,
      "name":"12",
      "title":"qqqq",
      "image":"images/products/nhac.jpg",
    },
    {
      "id":3,
      "name":"123",
      "title":"wwww",
      "image":"images/products/nhac.jpg",
    },
    {
      "id":4,
      "name":"1234",
      "title":"rrrrrr",
      "image":"images/products/nhac.jpg",
    },
    {
      "id":5,
      "name":"12345",
      "title":"eeee",
      "image":"images/products/nhac.jpg",
    },
    {
      "id":6,
      "name":"123456",
      "title":"ttt",
      "image":"images/products/nhac.jpg",
    },
    {
      "id":7,
      "name":"1234567",
      "title":"yyyyy",
      "image":"images/products/nhac.jpg",
    },
    {
      "id":8,
      "name":"12345678",
      "title":"kkkk",
      "image":"images/products/nhac.jpg",
    },
    {
      "id":9,
      "name":"12345678",
      "title":"kkkk",
      "image":"images/products/nhac.jpg",
    },
    {
      "id":10,
      "name":"12345678",
      "title":"kkkk",
      "image":"images/products/nhac.jpg",
    },
    {
      "id": 11,
      "name":"12345678",
      "title":"kkkk",
      "image":"images/products/nhac.jpg",
    },
    {
      "id":12,
      "name":"12345678",
      "title":"kkkk",
      "image":"images/products/nhac.jpg",
    },
    {
      "id":13,
      "name":"12345678",
      "title":"kkkk",
      "image":"images/products/nhac.jpg",
    },
  ];




  @override
  Widget build(BuildContext context) {
    double blur = 1.0;
    var logger = Logger();

    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: playList.length,
      itemBuilder: (context, index) {
        var item = playList[index];
        var image1 = item["image"];
        
        // DecorationImage? decorationImage;

        // if (image1 is String) {
        //   decorationImage = DecorationImage(
        //     image: AssetImage(image1),
        //     fit: BoxFit.cover,
        //   );
        // }

        return GestureDetector(
          onTap: () { 
            Navigator.push(context, 
              MaterialPageRoute(
                builder: (context) => const PlayListPage(),
              ),
            );
           },
          child: Container(
            height: 130,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 10,right: 10,left: 7),
            decoration: BoxDecoration(
              color: const Color(0xFF30314D),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromRGBO(155, 155, 155, 0.5),
                  blurRadius: blur ,
                  blurStyle: BlurStyle.solid,
                  offset: const Offset(0, 2),
                ),
        
                BoxShadow(
                  color: const Color.fromRGBO(155, 155, 155, 0.5),
                  blurRadius: blur,
                  blurStyle: BlurStyle.solid,
                  offset: const Offset(0, -2),
                ),
                
                BoxShadow(
                  color: const Color.fromRGBO(155, 155, 155, 0.5),
                  blurRadius: blur + 4,
                  offset: const Offset(4, 0),
                ),
                BoxShadow(
                  color: const Color.fromRGBO(155, 155, 155, 0.5),
                  blurRadius: blur + 4,
                  offset: const Offset(-2, 0),
                ),
              ],
            ),
            child: Row(
              children: [
                GradientShadowImage(
                  imageUrl: image1,
                  widthImg: 100,
                  colorsGradient: const [
                    Colors.transparent,
                    Color(0xFF30314D),
                  ],
                  beginAlign: Alignment.centerLeft,
                  endAlign: Alignment.centerRight,
                  stopAlign: const [0, 1],
                  network: false,
                ),
                
                const SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Imagine Dragons - Believer",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        Text("Bass",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(width: 5,),
                        Text("-",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(width: 5,),
                        Text("04:30",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                SizedBox(
                  height: 35,
                  width: 35,
                  child: Icon(
                    Icons.more_vert,
                    size: 25,
                    color: Colors.white.withOpacity(0.5),
                  ),
                )
              ],
            ),
          ),
        );
      }
    );
  }
}