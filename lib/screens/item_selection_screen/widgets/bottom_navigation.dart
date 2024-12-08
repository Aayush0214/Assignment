import 'package:flutter/material.dart';

import '../../../utils/constant/constant_colors.dart';
import '../../detail_filling_screen/detail_filling_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
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
              Text('Price per plate',
                  style: TextStyle(
                      color: ConstantColors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 14)),
              Text('₹240/Plate',
                  style: TextStyle(
                      color: ConstantColors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18))
            ],
          ),
          ElevatedButton(
              onPressed: () =>
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const OrderFillingScreen())),
              style: ElevatedButton.styleFrom(
                backgroundColor: ConstantColors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Fill Details',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ))
        ],
      ),
    );
  }
}
