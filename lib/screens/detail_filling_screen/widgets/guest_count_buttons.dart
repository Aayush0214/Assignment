import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import '../../../utils/constant/constant_colors.dart';
import '../../../utils/constant/sizes.dart';
import '../controllers/detail_filling_controller.dart';

class GuestCountButtons extends StatefulWidget {
  const GuestCountButtons({super.key});

  @override
  State<GuestCountButtons> createState() => _GuestCountButtonsState();
}

class _GuestCountButtonsState extends State<GuestCountButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Text('Total Guests',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                    color: ConstantColors.black))),
        Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(Sizes.xs),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ConstantColors.white,
              ),
              child: InkWell(
                onTap: () => context.read<DetailFillingController>().decrementGuestCount(),
                child: Icon(
                  Iconsax.minus,
                  color: ConstantColors.blue,
                  size: 32,
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                        color:
                        ConstantColors.grey.withOpacity(0.5),
                        width: 1),
                    borderRadius: const BorderRadius.all(
                        Radius.circular(8))),
                child: Consumer<DetailFillingController>(
                  builder: (ctx, _, __) => Text( ctx.watch<DetailFillingController>().totalGuest.round().toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: ConstantColors.black),
                      textAlign: TextAlign.center),
                )
            )),
        Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(Sizes.xs),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ConstantColors.pink.withOpacity(0.1),
              ),
              child: InkWell(
                onTap: () => context.read<DetailFillingController>().incrementGuestCount(),
                child: Icon(
                  Iconsax.add,
                  color: ConstantColors.blue,
                  size: 30,
                ),
              ),
            )),
      ],
    );
  }
}
