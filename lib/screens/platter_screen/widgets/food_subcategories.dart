import 'package:craftmyplate/screens/platter_screen/platters_controller/platters_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/constant/constant_colors.dart';
import '../../../utils/constant/image_strings.dart';
import '../../../utils/constant/sizes.dart';

class FoodSubcategories extends StatefulWidget {
  const FoodSubcategories({super.key});

  @override
  State<FoodSubcategories> createState() => _FoodSubcategoriesState();
}

class _FoodSubcategoriesState extends State<FoodSubcategories> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 110,
      child: Stack(
        children: [

          /// Sub-categories
          Positioned(
            top: 30,
            left: 0,
            child: SizedBox(
              width: 400,
              height: 130,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                separatorBuilder: (context, index) =>
                const SizedBox(width: 10),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          child: Image.asset(
                            ConstantImages.biryani,
                            fit: BoxFit.contain,
                            height: 35,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          Provider.of<PlatterController>(context).foodCategories[index],
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: ConstantColors.black),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),

          /// Sub-Categories and total items tag
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.all(Sizes.xs),
              decoration: BoxDecoration(
                  color: ConstantColors.yellow.withOpacity(0.3),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Text(
                "7 Categories & 12 Items",
                style: TextStyle(
                    fontSize: 12, color: ConstantColors.orange),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
