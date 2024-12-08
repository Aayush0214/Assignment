import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constant/constant_colors.dart';

class SelectedFoodItem extends StatefulWidget {
  const SelectedFoodItem({super.key, required this.foodItemName});

  final String foodItemName;

  @override
  State<SelectedFoodItem> createState() => _SelectedFoodItemState();
}

class _SelectedFoodItemState extends State<SelectedFoodItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            flex: 0,
            child: Icon(Iconsax.box,
                size: 28, color: ConstantColors.blue)),
        const SizedBox(width: 12),
        Expanded(
            flex: 3,
            child: Text(
              widget.foodItemName,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: ConstantColors.black),
            )),
        Expanded(
            flex: 1,
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'Edit',
                  style: TextStyle(
                      color: ConstantColors.pink,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                )))
      ],
    );
  }
}
