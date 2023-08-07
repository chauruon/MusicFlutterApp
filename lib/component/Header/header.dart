import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_music/ultils/styles.dart';


class Header extends StatelessWidget {
  
  final bool stateBack;
  
  final IconData? iconLeft;
  final IconData? iconRight;

  const Header({
    super.key,
    required this.stateBack,
    this.iconLeft,
    this.iconRight,
  });

  @override
  Widget build(BuildContext context) {

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
                      if (stateBack) {
                        Navigator.pop(context);
                      }else {
                        Navigator.pop(context);
                      }
                    },
                    child: LayoutBuilder(builder: (context, constraints) { 
                      if(stateBack){
                        return Icon(
                          CupertinoIcons.back,
                          color: navyBlue,
                          size: 30,
                        );
                      }else{
                        return Icon(
                          Icons.sort_rounded,
                          color: navyBlue,
                          size: 30,
                        );
                      }
                    }),
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