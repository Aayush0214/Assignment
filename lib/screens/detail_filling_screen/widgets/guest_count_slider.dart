import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/constant/constant_colors.dart';
import '../controllers/detail_filling_controller.dart';

class GuestCountSlider extends StatefulWidget {
  const GuestCountSlider({super.key});

  @override
  State<GuestCountSlider> createState() => _GuestCountSliderState();
}

class _GuestCountSliderState extends State<GuestCountSlider> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: double.infinity,
      child: Stack(
        children: [
          SliderTheme(
            data: const SliderThemeData(
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8),
              trackHeight: 2,
            ),
            child: Slider(
              value: Provider.of<DetailFillingController>(context, listen: true).totalGuest,
              activeColor: ConstantColors.blue,
              inactiveColor: ConstantColors.grey.withOpacity(0.5),
              min: 10,
              max: 1500,
              onChanged: (value) => context.read<DetailFillingController>().totalGuestCount(value),
            ),
          ),
          Positioned(
            bottom: 40,
            left: (Provider.of<DetailFillingController>(context, listen: true).totalGuest - 10) / (1500 - 10) * (MediaQuery.of(context).size.width - 95) ,
            child: Icon(Icons.person, color: ConstantColors.blue, size: 47),
          ),
          Positioned(
            top: 50,
            left: 20,
            child: Text('10(min)', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: ConstantColors.black)),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: Text('1500', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: ConstantColors.black)),
          ),
        ],
      ),
    );
  }
}
