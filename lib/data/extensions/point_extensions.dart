import 'dart:ui' show Offset;

import 'package:perfect_freehand/perfect_freehand.dart';

extension PointExtensions on Point {
  static Point fromJson({
    required Map<String, dynamic> json,
    Offset offset = Offset.zero,
  }) => Point(
    json['x'] + offset.dx,
    json['y'] + offset.dy,
    json['p']
  );

  Map<String, dynamic> toJson() => {
    'x': x,
    'y': y,
    'p': p,
  };

  Point operator +(Offset offset) => Point(
    x + offset.dx,
    y + offset.dy,
    p,
  );
}
