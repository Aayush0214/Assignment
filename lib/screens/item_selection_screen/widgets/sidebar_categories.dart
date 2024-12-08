import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/constant/constant_colors.dart';
import '../../../utils/constant/sizes.dart';
import '../controllers/item_selection_controller.dart';

class SidebarCategories extends StatefulWidget {
  const SidebarCategories({super.key});

  @override
  State<SidebarCategories> createState() => _SidebarCategoriesState();
}

class _SidebarCategoriesState extends State<SidebarCategories> {

  @override
  Widget build(BuildContext context) {
    final isActive = Provider.of<ItemSelectionController>(context).isActive;
    final foodCategoryImage = Provider.of<ItemSelectionController>(context).foodCategoryImage;
    final foodCategoryString = Provider.of<ItemSelectionController>(context).foodCategoryString;
    final foodCategoryQuantity = Provider.of<ItemSelectionController>(context).foodCategoryQuantity;
    return Expanded(
      flex: 0,
      child: Container(
        width: 80,
        height: double.infinity,
        decoration: BoxDecoration(
            color: ConstantColors.white,
            border: Border.symmetric(vertical: BorderSide(color: ConstantColors.black, width: 0.1))
        ),
        child: ListView.separated(
            shrinkWrap: true,
            itemCount: 3,
            separatorBuilder: (_, int index) =>
            const SizedBox(height: Sizes.xs),
            scrollDirection: Axis.vertical,
            itemBuilder: (_, int index) {
              return Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(Sizes.xs),
                decoration: BoxDecoration(
                  color: isActive[index]
                      ? ConstantColors.blue
                      : Colors.grey[300],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 80,
                      child: Stack(
                        children: [
                          CircleAvatar(
                              radius: 35,
                              backgroundColor: isActive[index]
                                  ? null
                                  : ConstantColors.unSelected
                                  .withOpacity(0.5),
                              child: Image.asset(
                                foodCategoryImage[index],
                                fit: BoxFit.contain,
                              )),
                          if (isActive[index])
                            Positioned(
                              bottom: 3,
                              left: 19,
                              child: CircleAvatar(
                                radius: 11,
                                backgroundColor: ConstantColors.white,
                                child: Center(
                                    child: Icon(Icons.verified,
                                        color: ConstantColors.green,
                                        size: 22)),
                              ),
                            )
                        ],
                      ),
                    ),
                    Text(
                      foodCategoryString[index],
                      style: TextStyle(
                        color:
                        isActive[index] ? ConstantColors.white : Colors.black,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      foodCategoryQuantity[index],
                      style: TextStyle(
                        color:
                        isActive[index] ? Colors.white : Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
