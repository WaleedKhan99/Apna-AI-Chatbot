import 'package:apna_ai_app/utils/constraints/colors.dart';
import 'package:apna_ai_app/utils/constraints/size.dart';
import 'package:apna_ai_app/utils/device/device.utility.dart';
import 'package:flutter/material.dart';

import '../../../utils/helpers/helper_functions.dart';

class WSearchContainer extends StatelessWidget {
  const WSearchContainer({
    super.key,
    required this.text,
    this.icon = Icons.search_outlined,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: WSizes.defualtSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: WDeviceUtils.getScreenWidth(context),
          padding: EdgeInsets.all(WSizes.md),
          decoration: BoxDecoration(
              color: showBackground
                  ? dark
                      ? WColors.dark
                      : WColors.light
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(WSizes.cardRadiusLg),
              border: showBorder ? Border.all(color: WColors.grey) : null),
          child: Row(
            children: [
              Icon(
                icon,
                color: WColors.grey,
              ),
              const SizedBox(width: WSizes.spaceBtwItems),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
