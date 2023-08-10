import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:my_music/ultils/dd.dart';
import 'package:intl/intl.dart';

class TabMusic extends StatefulWidget {
  const TabMusic({super.key});

  @override
  State<TabMusic> createState() => _TabMusicState();
}

class _TabMusicState extends State<TabMusic> {

  final List musicList = [
    {
      "id":1,
      "name":"1",
      "title":"rrrrrr",
    },
    {
      "id":2,
      "name":"12",
      "title":"qqqq",
    },
    {
      "id":3,
      "name":"123",
      "title":"wwww",
    },
    {
      "id":4,
      "name":"1234",
      "title":"rrrrrr",
    },
    {
      "id":5,
      "name":"12345",
      "title":"eeee",
    },
    {
      "id":6,
      "name":"123456",
      "title":"ttt",
    },
    {
      "id":7,
      "name":"1234567",
      "title":"yyyyy",
    },
    {
      "id":8,
      "name":"12345678",
      "title":"kkkk",
    },
  ];


  @override
  Widget build(BuildContext context) {
    var logger = Logger();
    double blur = 1.0;

    int timestamp = DateTime.now().millisecondsSinceEpoch;
  
    // String date = \convertTimes
    var timestamps = TimeFormat.convertTimes(timestamp);
    TimeFormat.convertToUtc(timestamps);
    // TimeFormat.formatTimestamp(timestamp);
    // logger.d("date: $date"); 






    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.only(bottom: 15),
      itemCount: musicList.length,
      itemBuilder: (context, index) {
        
        final item = musicList[index];
        // logger.d("movieTitle $item");

        return Container(
          margin: const EdgeInsets.only(top: 10,right: 15,left: 3,),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
              Text("${item['id']}",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
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
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Icon(
                  Icons.play_arrow,
                  size: 25,
                  color: Color(0xFF31314F),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}