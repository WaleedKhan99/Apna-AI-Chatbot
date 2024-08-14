import 'package:apna_ai_app/utils/constraints/colors.dart';
import 'package:apna_ai_app/utils/device/device.utility.dart';
import 'package:apna_ai_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WAppBar({
    super.key,
    this.title,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
    this.showBackArrow = false,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);
    return AppBar(
      backgroundColor: dark ? WColors.info : Colors.grey.shade200,
      automaticallyImplyLeading: false,
      leading: showBackArrow
          ? IconButton(
              color: dark ? WColors.white : WColors.black,
              onPressed: () => Get.back(),
              icon: Icon(Icons.arrow_back))
          : leadingIcon != null
              ? IconButton(
                  color: dark ? WColors.white : WColors.dark,
                  onPressed: leadingOnPressed,
                  icon: Icon(leadingIcon))
              : null,
      title: title,
      actions: actions,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(WDeviceUtils.getAppBarHeight());
}



// =============================================================================

