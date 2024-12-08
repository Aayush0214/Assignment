import 'package:craftmyplate/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import '../../../utils/constant/constant_colors.dart';
import '../../detail_filling_screen/controllers/detail_filling_controller.dart';

class SubTotal extends StatefulWidget {
  const SubTotal({super.key, this.onTab});

  final VoidCallback? onTab;

  @override
  State<SubTotal> createState() => _SubTotalState();
}

class _SubTotalState extends State<SubTotal> {
  @override
  Widget build(BuildContext context) {
    double discountPrice = Provider.of<DetailFillingController>(context).totalPrice.round() - 3500;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Subtotal ',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: ConstantColors.black,
                        fontSize: 15)),
                Consumer<DetailFillingController>(
                  builder: (ctx, _, __) => Text(
                      '₹${ctx.watch<DetailFillingController>().totalPrice.round().toString()}',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: ConstantColors.grey.withOpacity(0.5),
                          fontSize: 16,
                          decoration: TextDecoration.lineThrough),
                      softWrap: true,
                      overflow: TextOverflow.clip),
                ),
                const SizedBox(width: Sizes.sm),
                Consumer<DetailFillingController>(
                  builder: (ctx, _, __) => Text(
                      '₹${discountPrice.round().toString()}',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: ConstantColors.black,
                          fontSize: 16,),
                      softWrap: true,
                      overflow: TextOverflow.clip),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Incl. taxes and charges',
                    style:
                        TextStyle(fontWeight: FontWeight.w200, fontSize: 12)),
              ],
            ),
          ],
        ),
        IconButton(
            onPressed: widget.onTab,
            icon: const Icon(Iconsax.arrow_right_34, size: 28)),
      ],
    );
  }
}
