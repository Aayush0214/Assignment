import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/constant/constant_colors.dart';
import '../../detail_filling_screen/controllers/detail_filling_controller.dart';

class BottomNavigationPrice extends StatefulWidget {
  const BottomNavigationPrice({super.key});

  @override
  State<BottomNavigationPrice> createState() => _BottomNavigationPriceState();
}

class _BottomNavigationPriceState extends State<BottomNavigationPrice> {
  @override
  Widget build(BuildContext context) {
    double discountPrice = Provider.of<DetailFillingController>(context).totalPrice.round() - 3500;
    return Container(
      width: double.infinity,
      height: 80,
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.black12,
            blurRadius: 3,
            blurStyle: BlurStyle.outer,
            spreadRadius: 0.5),
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('To pay',
                  style: TextStyle(
                      color: ConstantColors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 14)),
              Text('-₹${discountPrice.round().toString()}/-',
                  style: TextStyle(
                      color: ConstantColors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18))
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: ConstantColors.blue,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)))),
              child: const Text(
                'Place Order',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ))
        ],
      ),
    );
  }
}
