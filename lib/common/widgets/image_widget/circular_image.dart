import 'package:apna_ai_app/utils/constraints/colors.dart';
import 'package:apna_ai_app/utils/constraints/size.dart';
import 'package:apna_ai_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class WCircularImage extends StatelessWidget {
  const WCircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.overlayColor,
    this.backgroundColor,
    required this.image,
    this.fit = BoxFit.cover,
    this.padding = WSizes.sm,
    this.isNetworkImage = false,
  });
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
// If image background color is null then switch it to light and dark mode color design.
          color: backgroundColor ??
              (WHelperfunction.isDarkMode(context)
                  ? WColors.black
                  : WColors.white),
          borderRadius: BorderRadius.circular(100),
        ), // BoxDecoration
        child: Center(
          child: Image(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(image)
                : AssetImage(image) as ImageProvider,
            color: overlayColor,
          ), // Image
        ) // Center
        );
  }
  // Container
}
