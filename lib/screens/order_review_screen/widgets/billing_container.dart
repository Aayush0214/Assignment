import 'package:craftmyplate/screens/order_review_screen/widgets/saved_amount_screen.dart';
import 'package:flutter/material.dart';

import 'billing_section.dart';

class BillingContainer extends StatefulWidget {
  const BillingContainer({super.key});

  @override
  State<BillingContainer> createState() => _BillingContainerState();
}

class _BillingContainerState extends State<BillingContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 3,
                blurStyle: BlurStyle.outer,
                spreadRadius: 0.5),
          ]),
      child: const Column(
        children: [
          /// Saving Value
          SavedAmountScreen(savedAmount: '₹3,500/- '),

          /// Pricing value, discount value
          BillingSection()
        ],
      ),
    );
  }
}
