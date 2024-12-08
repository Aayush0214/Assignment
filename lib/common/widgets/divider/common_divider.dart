import 'package:flutter/material.dart';

class CommonDivider extends StatelessWidget {
  const CommonDivider({
    super.key,
    required this.dividerColor,
    required this.thickness,
    this.height,
    this.indent,
    this.endIndent,
  });

  final Color dividerColor;
  final double thickness;
  final double? height;
  final double? indent, endIndent;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: dividerColor,
      thickness: thickness,
      height: height,
      indent: indent,
      endIndent: endIndent,
    );
  }
}
