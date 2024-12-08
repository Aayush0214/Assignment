import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constant/constant_colors.dart';
import '../../item_selection_screen/item_selection_screen.dart';

class PricingAndGuestCount extends StatefulWidget {
  const PricingAndGuestCount({super.key});

  @override
  State<PricingAndGuestCount> createState() => _PricingAndGuestCountState();
}

class _PricingAndGuestCountState extends State<PricingAndGuestCount> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("₹299/guest",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: ConstantColors.black)),
        const Spacer(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ConstantColors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) =>
                  const ItemSelectionScreen())),
          child: Row(
            children: [
              Text("Customize",
                  style: TextStyle(color: ConstantColors.white)),
              Icon(Iconsax.arrow_right_3,
                  color: ConstantColors.white, size: 20),
            ],
          ),
        ),
      ],
    );
  }
}
