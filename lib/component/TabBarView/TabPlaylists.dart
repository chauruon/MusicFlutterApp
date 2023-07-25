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

        // return Image(
        //   image: imageAsset, // Replace with the actual image path
        //   width: 20,
        //   height: 20,
        //   fit: BoxFit.cover, // Choose the appropriate fit for your use case
        // );
        return ListTile(
          title: Text(item['title']),
          subtitle: Text(item['name']),
          leading: Image.asset(image1,width: 30,height: 30,),
        );
      }
    );
  }
}