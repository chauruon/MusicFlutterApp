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
    bool set_icon = false;

    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(top: 5,right: 10,left: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              // color: Colors.red,
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: set_icon
                      // ignore: dead_code
                      ? Icon(
                          CupertinoIcons.back,
                          color: navyBlue,
                          size: 30,
                        )
                      : Icon(
                          Icons.arrow_back,
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