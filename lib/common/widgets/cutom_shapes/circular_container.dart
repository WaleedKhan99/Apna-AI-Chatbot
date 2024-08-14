import 'package:flutter/material.dart';
import '../../../utils/constraints/colors.dart';

class WCircularContainer extends StatelessWidget {
  const WCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.child,
    this.radius = 400,
    this.padding = 0,
    this.margin,
    this.backgroundColor = WColors.lightwhite,
  });

  final double? width;
  final double? height;
  final Widget? child;
  final double radius;
  final double padding;
  final EdgeInsets? margin;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius), color: backgroundColor),
      child: child,
    );
  }
}
