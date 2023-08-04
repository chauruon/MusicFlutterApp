import 'package:flutter/material.dart';

class GradientShadowImage extends StatelessWidget {
  final String imageUrl;
  final double shadowOpacity;
  final double shadowBlurRadius;
  final double? heightImg;
  final double? widthImg;
  final double widthOpacity;

  ///  if request image from server you set network to true
  final bool network;
  
  /// if you want to use margin and padding then you have to use top, left, right, bottom  to align the image.
  ///  Which side margin and padding do you use, use top, left, right, bottom that side? 
  final EdgeInsetsGeometry? margin;

  /// if you want to use margin and padding then you have to use top, left, right, bottom  to align the image.
  ///  Which side margin and padding do you use, use top, left, right, bottom that side? 
  final EdgeInsetsGeometry? padding;
  
  // gradient
  final List<Color> colorsGradient;
  final AlignmentGeometry beginAlign;
  final AlignmentGeometry endAlign;
  final List<double>? stopAlign;


  // Position
  final double? left;
  final double? top;
  final double? right;
  final double? bottom;
  final double? width;
  final double? height;

  // borderRadius
  final double? radiusAround;
  final double? topRight;
  final double? topLeft;
  final double? bottomLeft;
  final double? bottomRight;







  static const h = 300.0;
  static const w = 300.0;

  const GradientShadowImage({
    super.key, 
    required this.imageUrl,
    required this.colorsGradient,
    required this.network,
    this.shadowOpacity = 1.0,
    this.shadowBlurRadius = 8.0,
    this.heightImg,
    this.widthImg = 90,
    this.widthOpacity = w/2,
    
    /// if use spacing you must use top, left, right, bottom
    this.padding,
    this.margin,

    // gradient
    this.stopAlign,
    this.beginAlign = Alignment.topCenter,
    this.endAlign = Alignment.bottomCenter,

    // Position
    this.left,
    this.top,
    this.right,
    this.bottom = 0,
    this.width,
    this.height,

    // borderRadius
    this.radiusAround = 10.0,
    this.topRight,
    this.topLeft,
    this.bottomLeft,
    this.bottomRight,
  }): assert(left == null || right == null || width == null),
      assert(top == null || bottom == null || height == null),
      assert(
        radiusAround == null || 
        topRight == null ||
        topLeft == null || 
        bottomLeft == null || 
        bottomRight == null);

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Stack(
        children: [
          network ? 
            Container(
              margin: margin,
              padding: padding,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(radiusAround!),
            
                child: Image.network(
                  imageUrl,
                  height: heightImg,
                  width: widthImg,
                  fit: BoxFit.cover,
                ),
              ),
            )
          :
            Container(
              margin: margin,
              padding: padding,
              child: ClipRRect(
                borderRadius: (topRight == null || topLeft == null || bottomLeft == null || bottomRight == null) ? 
                    BorderRadius.circular(radiusAround!) 
                  :
                  BorderRadius.only(
                    topRight: topRight != null ? Radius.circular(topRight!) : Radius.zero,
                    topLeft: topLeft != null ? Radius.circular(topLeft!) : Radius.zero,
                    bottomLeft: bottomLeft != null ? Radius.circular(bottomLeft!) : Radius.zero,
                    bottomRight: bottomRight != null ? Radius.circular(bottomRight!) : Radius.zero,
                  ),
            
                child: Image.asset(
                  imageUrl,
                  height: heightImg,
                  width: widthImg,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
          Positioned(
            bottom: bottom,
            left: left,
            top: top,
            right: right,
            width: width,
            height: height,
            child: Container(
              width: widthImg,
              height: widthOpacity,
              decoration: BoxDecoration(
                borderRadius: (topRight == null || topLeft == null || bottomLeft == null || bottomRight == null) ? 
                  BorderRadius.circular(radiusAround!) 
                :
                  BorderRadius.only(
                    topRight: topRight != null ? Radius.circular(topRight!) : Radius.zero,
                    topLeft: topLeft != null ? Radius.circular(topLeft!) : Radius.zero,
                    bottomLeft: bottomLeft != null ? Radius.circular(bottomLeft!) : Radius.zero,
                    bottomRight: bottomRight != null ? Radius.circular(bottomRight!) : Radius.zero,
                  ),
                gradient: LinearGradient(
                  begin: beginAlign,
                  end: endAlign,
                  stops: stopAlign,
                  colors: colorsGradient,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
