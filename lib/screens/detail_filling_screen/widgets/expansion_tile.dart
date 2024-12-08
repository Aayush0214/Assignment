import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utils/constant/constant_colors.dart';

class CustomExpansionTile extends StatefulWidget {
  const CustomExpansionTile({super.key, required this.occasion, required this.children});

  final String occasion;
  final List<Widget> children;

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  bool _customIcon = false;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        enabled: true,
        leading: Text('Occasion',
            style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 16,
                color: ConstantColors.unSelected)),
        title: Text(widget.occasion,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: ConstantColors.black)),
        trailing: Icon(_customIcon ? Iconsax.arrow_up_24 : Iconsax.arrow_down_14),
        children: widget.children,
        onExpansionChanged: (bool expanded) {
          setState(() {
            _customIcon = expanded;
          });
        }
    );
  }
}
