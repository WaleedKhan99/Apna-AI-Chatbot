import 'package:apna_ai_app/common/widgets/texts/brand_title_text.dart';
import 'package:apna_ai_app/utils/constraints/colors.dart';
import 'package:apna_ai_app/utils/constraints/enum.dart';
import 'package:apna_ai_app/utils/constraints/size.dart';
import 'package:flutter/material.dart';

class WBrandTitleWithVerifiedIcon extends StatelessWidget {
  const WBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = WColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: WBrandTitleText(
          title: title,
          color: textColor,
          maxLines: maxLines,
          textAlign: textAlign,
          brandTextSize: brandTextSize,
        )),
        const SizedBox(width: WSizes.xs),
        Icon(Icons.verified, color: iconColor, size: WSizes.iconXs)
      ],
    );
  }
}
