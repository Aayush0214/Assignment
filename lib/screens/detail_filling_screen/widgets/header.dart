import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constant/constant_colors.dart';
import '../../../utils/constant/sizes.dart';

class Header extends StatefulWidget {
  const Header({super.key, required this.foodName});

  final String foodName;

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Iconsax.box, color: ConstantColors.blue, size: 25),
        const SizedBox(width: Sizes.sm),
        Text(widget.foodName,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: ConstantColors.black,
                fontSize: 20),
            softWrap: true,
            overflow: TextOverflow.clip),
        const SizedBox(width: Sizes.xs),
        IconButton(
            onPressed: () {},
            icon: Icon(Iconsax.edit,
                color: ConstantColors.black, size: 22))
      ],
    );
  }
}
