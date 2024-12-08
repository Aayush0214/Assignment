import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/constant/constant_colors.dart';
import '../../../utils/constant/sizes.dart';
import '../controllers/detail_filling_controller.dart';

class SelectedDateAndTime extends StatefulWidget {
  const SelectedDateAndTime({super.key});

  @override
  State<SelectedDateAndTime> createState() => _SelectedDateAndTimeState();
}

class _SelectedDateAndTimeState extends State<SelectedDateAndTime> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () =>
                context.read<DetailFillingController>().selectDate(context),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                      color: ConstantColors.grey.withOpacity(0.5), width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Row(
                children: [
                  Expanded(
                      flex: 0,
                      child: Icon(Icons.calendar_today_outlined,
                          color: ConstantColors.blue, size: 20)),
                  const SizedBox(width: Sizes.sm),
                  Expanded(
                      flex: 1,
                      child: Consumer<DetailFillingController>(
                        builder: (ctx, _, __) => Text(
                            ctx
                                .watch<DetailFillingController>()
                                .occasionDate
                                .toString().split(' ')[0],
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                color: ConstantColors.black),
                            softWrap: true,
                            overflow: TextOverflow.clip),
                      ))
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: Sizes.sm),
        Expanded(
          child: GestureDetector(
            onTap: () =>
                context.read<DetailFillingController>().pickTimeRange(context),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                      color: ConstantColors.grey.withOpacity(0.5), width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Row(
                children: [
                  Expanded(
                      flex: 0,
                      child: Icon(Icons.watch_later_outlined,
                          color: ConstantColors.blue, size: 20)),
                  const SizedBox(width: Sizes.sm),
                  Expanded(
                      flex: 1,
                      child: Consumer<DetailFillingController>(
                        builder: (ctx, _, __) => Text(
                            '${ctx.watch<DetailFillingController>().startTime.format(ctx).toString()} - ${ctx.watch<DetailFillingController>().endTime.format(ctx).toString()}',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                color: ConstantColors.black),
                            softWrap: true,
                            overflow: TextOverflow.ellipsis),
                      ))
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
