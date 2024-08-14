import 'package:apna_ai_app/utils/constraints/colors.dart';
import 'package:apna_ai_app/utils/device/device.utility.dart';
import 'package:apna_ai_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

/// If you want to add the background color to tabs you have to wrap them in Material widget.
/// /// To do that we need [PreferredSized] Widget and that's why created custom class.[PreferredSizeWidget]

class WTabBar extends StatelessWidget implements PreferredSizeWidget {
  const WTabBar({
    super.key,
    required this.tabs,
  });
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = WHelperfunction.isDarkMode(context);
    return Material(
      color: dark ? WColors.black : WColors.white,
      child: TabBar(
          isScrollable: true,
          indicatorColor: WColors.primary,
          unselectedLabelColor: WColors.grey,
          labelColor: dark ? WColors.white : WColors.primary,
          tabs: tabs),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(WDeviceUtils.getAppBarHeight());
}
