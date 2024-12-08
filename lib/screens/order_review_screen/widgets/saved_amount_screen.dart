import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../utils/constant/constant_colors.dart';
import '../../../utils/constant/image_strings.dart';

class SavedAmountScreen extends StatefulWidget {
  const SavedAmountScreen({super.key, required this.savedAmount});

  final String savedAmount;

  @override
  State<SavedAmountScreen> createState() => _SavedAmountScreenState();
}

class _SavedAmountScreenState extends State<SavedAmountScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            gradient: ConstantColors.gradient1,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12)),
            shape: BoxShape.rectangle,
          ),
        ),
        Positioned(
          top: 15,
          bottom: 15,
          right: 15,
          left: 16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(ConstantImages.emoji),
              const Text('Hurray! You saved ',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Colors.white),
                  maxLines: 1,
                  softWrap: true,
                  overflow: TextOverflow.clip),
              Expanded(
                flex: 0,
                child: GradientText(
                  widget.savedAmount,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                  gradientType: GradientType.linear,
                  gradientDirection: GradientDirection.ttb,
                  colors: const [
                    Color.fromRGBO(239, 179, 26, 1),
                    Color.fromRGBO(249, 231, 183, 1),
                    Color.fromRGBO(251, 196, 55, 1),
                    Color.fromRGBO(250, 224, 158, 1),
                  ],
                ),
              ),
              const Expanded(
                  flex: 1,
                  child: Text('on total order',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Colors.white),
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.clip)),
            ],
          ),
        )
      ],
    );
  }
}
