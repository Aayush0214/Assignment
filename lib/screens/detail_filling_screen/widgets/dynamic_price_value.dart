import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../utils/constant/constant_colors.dart';
import '../controllers/detail_filling_controller.dart';

class DynamicPriceValue extends StatefulWidget {
  const DynamicPriceValue({super.key});

  @override
  State<DynamicPriceValue> createState() => _DynamicPriceValueState();
}

class _DynamicPriceValueState extends State<DynamicPriceValue> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Total Price:', style: TextStyle(fontWeight: FontWeight.w600, color: ConstantColors.black, fontSize: 18)),
        Consumer<DetailFillingController>(
          builder: (ctx, _, __) => Text('₹${ctx.watch<DetailFillingController>().totalPrice.round().toString()}', style: TextStyle(fontWeight: FontWeight.w600, color: ConstantColors.black, fontSize: 18)),
        )
      ],
    );
  }
}
