import 'package:flutter/material.dart';

// Custom shape for BottomAppBar with top rounded corners
class CircularNotchedRectangleWithTopRadius extends CircularNotchedRectangle {
  final double radius;

  CircularNotchedRectangleWithTopRadius(this.radius);

  @override
  Path getOuterPath(Rect host, Rect? guest) {
    Path path = super.getOuterPath(host, guest);
    path.moveTo(0, 0);
    path.lineTo(0, radius);
    path.arcToPoint(Offset(radius, 0), radius: Radius.circular(radius), clockwise: false);
    path.lineTo(host.width - radius, 0);
    path.arcToPoint(Offset(host.width, radius), radius: Radius.circular(radius), clockwise: false);
    path.lineTo(host.width, host.height);
    path.lineTo(0, host.height);
    path.close();
    return path;
  }
}