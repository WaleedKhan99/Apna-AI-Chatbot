import 'package:apna_ai_app/utils/constraints/colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WShadowStyle {
  static final verticalProductShadow = BoxShadow(
      color: WColors.grey.withOpacity(0.1),
      blurRadius: 50.r,
      spreadRadius: 7.r,
      offset: const Offset(0, 2));

  static final horizontalProductShadow = BoxShadow(
      color: WColors.grey.withOpacity(0.1),
      blurRadius: 50.r,
      spreadRadius: 7.r,
      offset: const Offset(0, 2));
}
