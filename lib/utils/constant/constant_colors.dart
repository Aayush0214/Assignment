import 'package:flutter/material.dart';

class ConstantColors {
  ConstantColors._();

  /// Single Colors
  static Color red = const Color.fromRGBO(145, 32, 24,1);
  static Color blue = const Color.fromRGBO(99, 24, 175,1);
  static Color orange = const Color.fromRGBO(220, 104, 3, 1);
  static Color black = const Color.fromRGBO(0, 0, 0, 1);
  static Color white = const Color.fromRGBO(255, 255, 255, 1);
  static Color grey = const Color.fromRGBO(36, 38, 40, 1);
  static Color yellow = const Color.fromRGBO(245, 230, 83, 1);
  static Color pink = const Color.fromRGBO(231, 4, 114, 1);
  static Color green = const Color.fromRGBO(37, 123, 62, 1);
  static Color unSelected = const Color.fromRGBO(96, 102, 108, 1);
  static Color scaffoldBackground = const Color.fromRGBO(255, 255, 255, 0.95);

  /// Gradient Colors
  static Gradient gradient1 = const LinearGradient(
    colors: [
      Color.fromRGBO(151, 101, 202, 1),
      Color.fromRGBO(125, 62, 188, 1),
      Color.fromRGBO(125, 62, 188, 1),
      Color.fromRGBO(99, 24, 175, 1),
    ],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    tileMode: TileMode.decal
  );
  static Gradient gradient2 = const LinearGradient(
      colors: [
        Color.fromRGBO(239, 179, 26, 1),
        Color.fromRGBO(249, 231, 183, 1),
        Color.fromRGBO(251, 196, 55, 1),
        Color.fromRGBO(250, 224, 158, 1),
      ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.10, 0.30, 0.50, 1]
  );
}