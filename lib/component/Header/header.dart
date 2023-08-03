import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_music/ultils/styles.dart';


class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    bool state_back = false;
    bool state_drawer = true;

    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(top: 5,right: 10,left: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      // switch (expression) {
                      //   case value:
                          
                      //     break;
                      //   default:
                      // }

                      // ignore: dead_code
                      if (state_back) {
                        Navigator.pop(context);
                      // ignore: dead_code
                      }else if(state_drawer){
                        Navigator.pop(context);
                      }
                    },
                    child: state_back
                      // ignore: dead_code
                      ? Icon(
                          CupertinoIcons.back,
                          color: navyBlue,
                          size: 30,
                        )
                      : Icon(
                          Icons.sort_rounded,
                          color: navyBlue,
                          size: 30,
                        ),
                  ),
                ],
              ),
            ),
            Container(
              // color: Colors.black,
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.more_vert,
                  color: navyBlue,
                  size: 30,
                ),
              ),
            ),
          ],
            ),
      ),
    );
  }
}