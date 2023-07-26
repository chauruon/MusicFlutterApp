import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:flutter/services.dart';

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
        logger.d("movieTitle $item");
        var image1 = item["image"];

        return Container(
          margin: const EdgeInsets.only(top: 10,right: 10,left: 0,),
          padding: const EdgeInsets.only(top: 0,right: 10,),
          decoration: BoxDecoration(
            color: const Color(0xFF30314D),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: const Color.fromRGBO(155, 155, 155, 0.5),
                blurRadius: blur ,
                blurStyle: BlurStyle.solid,
                offset: const Offset(0, -1),
              ),

              // Bottom Right
              BoxShadow(
                color: const Color.fromRGBO(155, 155, 155, 0.5),
                blurRadius: blur + 1,
                blurStyle: BlurStyle.solid,
                offset: const Offset(-1, 0),
              ),
              
              // Bottom Left
              BoxShadow(
                color: const Color.fromRGBO(155, 155, 155, 0.5),
                blurRadius: blur,
                offset: const Offset(2, 0),
              ),
            ],
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(image1,width: 90,fit: BoxFit.cover ),
              ),
              
              const SizedBox(width: 15,),
              InkWell(
                // onTap: () {
                //   Navigator.pushNamed(context, "musicPage");
                // },
                child: Column(
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
        );
      }
    );
  }
}