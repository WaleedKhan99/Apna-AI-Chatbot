import 'package:apna_ai_app/utils/constraints/colors.dart';
import 'package:apna_ai_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../utils/constraints/size.dart';

class WCircularIcon extends StatelessWidget {
  const WCircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = WSizes.lg,
    this.onPressed,
    this.color,
    this.backgroundColor,
  });
  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : WHelperfunction.isDarkMode(context)
                ? WColors.black.withOpacity(0.9)
                : WColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ), // BoxDecoration
      child: IconButton(
          onPressed: onPressed, icon: Icon(icon, color: color, size: size)),
    ); // Container
  }
}
