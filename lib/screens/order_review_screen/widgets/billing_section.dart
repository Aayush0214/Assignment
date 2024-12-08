import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/widgets/divider/common_divider.dart';
import '../../../utils/constant/constant_colors.dart';
import '../../../utils/constant/sizes.dart';
import '../../detail_filling_screen/controllers/detail_filling_controller.dart';

class BillingSection extends StatefulWidget {
  const BillingSection({super.key});


  @override
  State<BillingSection> createState() => _BillingSectionState();
}
class _BillingSectionState extends State<BillingSection> {
  @override
  Widget build(BuildContext context) {
    double discountPrice = Provider.of<DetailFillingController>(context).totalPrice.round() - 3500;
    return Padding(
      padding: const EdgeInsets.all(Sizes.spaceBtwItems),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total',
                  style: TextStyle(
                      fontSize: 16,
                      color: ConstantColors.black,
                      fontWeight: FontWeight.w400)),
              Consumer<DetailFillingController>(
                builder: (ctx, _, __) => Text(
                    '₹${ctx.watch<DetailFillingController>().totalPrice.round().toString()}/-',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: ConstantColors.black,
                        fontSize: 16,),
                    softWrap: true,
                    overflow: TextOverflow.clip),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Dynamic price discount',
                  style: TextStyle(
                      fontSize: 16,
                      color: ConstantColors.black,
                      fontWeight: FontWeight.w400)),
              Text('-₹3500/-',
                  style: TextStyle(
                      fontSize: 16,
                      color: ConstantColors.grey,
                      fontWeight: FontWeight.w400)),
            ],
          ),
          CommonDivider(dividerColor: ConstantColors.grey, thickness: 0.3, height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('To Pay',
                  style: TextStyle(
                      fontSize: 17,
                      color: ConstantColors.black,
                      fontWeight: FontWeight.w600)),
              Text('-₹${discountPrice.round().toString()}/-',
                  style: TextStyle(
                      fontSize: 17,
                      color: ConstantColors.black,
                      fontWeight: FontWeight.w600)),
            ],
          ),
        ],
      ),
    );
  }
}
