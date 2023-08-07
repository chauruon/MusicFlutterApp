import 'package:flutter/material.dart';

class ShadowContainer extends StatelessWidget {
  final Widget child;
  final double? height;
  final double? width;
  final Color? color;
  
  const ShadowContainer({
    super.key,
    required this.child,
    this.height,
    this.width,
    this.color,
  });

  @override
  Widget build(BuildContext context) {

    double blur = 1.0;

    return Container(
      height: height,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 15,right: 10,left: 7),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          // Dưới
          BoxShadow(
            color: const Color.fromRGBO(155, 155, 155, 0.5).withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: blur + 2,
             // changes position of shadow
            offset: const Offset(0, 2),
              // first paramerter of offset is left to right
              // second parameter is top to down
          ),
  
          // Trên
          BoxShadow(
            color: const Color.fromRGBO(155, 155, 155, 0.5),
            spreadRadius: 1,
            blurRadius: blur + 2,
             // changes position of shadow
            offset: const Offset(0, -2),
              // first paramerter of offset is left to right
              // second parameter is top to down
          ),
          
          // Phải
          BoxShadow(
            color: const Color.fromRGBO(155, 155, 155, 0.5),
            spreadRadius: 1,
            blurRadius: blur + 2,
               // changes position of shadow
            offset: const Offset(2, 0),
              // first paramerter of offset is left to right
              // second parameter is top to down
          ),

          // Trái
          BoxShadow(
            color: const Color.fromRGBO(155, 155, 155, 0.5),
            spreadRadius: 1,
            blurRadius: blur + 2,
              // changes position of shadow
            offset: const Offset(-3, 0),
              // first paramerter of offset is left to right
              // second parameter is top to down
          ),
        ],
      ),
      child: child,
    );
  }
}