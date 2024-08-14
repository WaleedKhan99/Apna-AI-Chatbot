import 'package:apna_ai_app/utils/constraints/colors.dart';
import 'package:apna_ai_app/utils/constraints/size.dart';
import 'package:flutter/material.dart';

class WRoundedContainer extends StatelessWidget {
  const WRoundedContainer(
      {super.key,
      this.child,
      this.width,
      this.height,
      this.padding,
      this.margin,
      this.showBorder = false,
      this.radius = WSizes.cardRadiusLg,
      this.backgroundColor = WColors.white,
      this.borderColor = WColors.grey});

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ), // BoxDecoration
      child: child,
    ); // Container
  }
}
