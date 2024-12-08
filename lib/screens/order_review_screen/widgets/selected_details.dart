import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/constant/constant_colors.dart';
import '../../detail_filling_screen/controllers/detail_filling_controller.dart';

class SelectedOrderDetails extends StatefulWidget {
  const SelectedOrderDetails({super.key});

  @override
  State<SelectedOrderDetails> createState() => _SelectedOrderDetailsState();
}

class _SelectedOrderDetailsState extends State<SelectedOrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.person,
          color: ConstantColors.grey,
          size: 22,
        ),
        const SizedBox(width: 8),
        Consumer<DetailFillingController>(
          builder: (ctx, _, __) => Text(
              ctx
                  .watch<DetailFillingController>()
                  .totalGuest
                  .round()
                  .toString(),
              style: TextStyle(color: ConstantColors.grey),
              softWrap: true,
              overflow: TextOverflow.clip),
        ),
        const SizedBox(width: 14),
        Icon(
          Icons.calendar_today,
          color: ConstantColors.grey,
          size: 18,
        ),
        const SizedBox(width: 8),
        Consumer<DetailFillingController>(
          builder: (ctx, _, __) => Text(
              ctx
                  .watch<DetailFillingController>()
                  .occasionDate
                  .toString()
                  .split(' ')[0],
              style: TextStyle(color: ConstantColors.grey),
              softWrap: true,
              overflow: TextOverflow.clip),
        ),
        const SizedBox(width: 14),
        Icon(
          Icons.watch_later_outlined,
          color: ConstantColors.grey,
          size: 20,
        ),
        const SizedBox(width: 8),
        Consumer<DetailFillingController>(
          builder: (ctx, _, __) => Expanded(
            child: Text(
                '${ctx.watch<DetailFillingController>().startTime.format(ctx).toString()} - ${ctx.watch<DetailFillingController>().endTime.format(ctx).toString()}',
                style: TextStyle(color: ConstantColors.grey),
                softWrap: true,
                overflow: TextOverflow.clip),
          ),
        )
      ],
    );
  }
}
