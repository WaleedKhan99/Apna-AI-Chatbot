import 'package:apna_ai_app/utils/constraints/colors.dart';
import 'package:apna_ai_app/utils/constraints/size.dart';
import 'package:flutter/material.dart';

class WRoundedImage extends StatelessWidget {
  const WRoundedImage({
    super.key,
    this.width,
    this.height,
    this.border,
    this.onPressed,
    this.padding,
    this.fit = BoxFit.fill,
    this.isNetworkImage = false,
    this.applyImageRadius = true,
    this.borderRadius = WSizes.md,
    this.backgroundColor = WColors.light,
    required this.imageUrl,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          width: width,
          height: height,
          padding: padding,
          decoration: BoxDecoration(
              border: border,
              color: backgroundColor,
              borderRadius: BorderRadius.circular(borderRadius)),
          child: ClipRRect(
            borderRadius: applyImageRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero,
            child: Image(
                fit: fit,
                image: isNetworkImage
                    ? NetworkImage(imageUrl)
                    : AssetImage(imageUrl) as ImageProvider),
          )),
    );
  }
}
