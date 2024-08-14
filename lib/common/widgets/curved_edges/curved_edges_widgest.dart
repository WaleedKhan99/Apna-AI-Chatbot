import 'package:flutter/material.dart';

import 'curved_edges.dart';

class WCurvedEdgeWidget extends StatelessWidget {
  const WCurvedEdgeWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WCustomCurvedEdges(),
      child: child,
    );
  }
}
