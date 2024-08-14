import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/constraints/colors.dart';
import '../curved_edges/curved_edges_widgest.dart';
import 'circular_container.dart';

class WPrimaryHeaderContainer extends StatelessWidget {
  const WPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return WCurvedEdgeWidget(
      child: Container(
        color: WColors.primary,
        padding: EdgeInsets.all(0),
        child: Stack(
          children: [
            // Background Custom Shapes
            Positioned(top: -150.h, left: -250.w, child: WCircularContainer()),
            Positioned(top: 100.h, left: -300.w, child: WCircularContainer()),
            child
          ],
        ),
      ),
    );
  }
}
