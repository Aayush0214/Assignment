import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constant/constant_colors.dart';
import '../../../utils/constant/sizes.dart';

class FoodAndDiscountValue extends StatefulWidget {
  const FoodAndDiscountValue({super.key});

  @override
  State<FoodAndDiscountValue> createState() => _FoodAndDiscountValueState();
}

class _FoodAndDiscountValueState extends State<FoodAndDiscountValue> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 4,
            child: Text('Price Per Plate:',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: ConstantColors.black))),
        Expanded(
            flex: 0,
            child: Text('20%',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: ConstantColors.green))),
        Expanded(
            flex: 0,
            child: Icon(Iconsax.arrow_down,
                size: 15, color: ConstantColors.black)),
        const SizedBox(width: Sizes.xs),
        Expanded(
            flex: 0,
            child: Text('₹299',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                    color: ConstantColors.unSelected,
                    decoration: TextDecoration.lineThrough))),
        const SizedBox(width: Sizes.sm),
        Expanded(
            flex: 0,
            child: Text('₹240',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: ConstantColors.black))),
      ],
    );
  }
}
