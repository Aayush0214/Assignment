import 'package:craftmyplate/screens/item_selection_screen/widgets/toggle_chip.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

import '../../../utils/constant/constant_colors.dart';
import '../../../utils/constant/sizes.dart';
import '../controllers/item_selection_controller.dart';

class MainContent extends StatefulWidget {
  const MainContent({super.key});

  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  @override
  Widget build(BuildContext context) {
    final southFoodCategoryName = Provider.of<ItemSelectionController>(context).southFoodCategoryName;
    final southFoodCategoryImage = Provider.of<ItemSelectionController>(context).southFoodCategoryImage;
    bool isActive = Provider.of<ItemSelectionController>(context).value;
    return Expanded(
      flex: 3,
      child: Column(
        children: [
          // Veg/Non-Veg Toggle
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ToggleChip(
                        color: ConstantColors.green,
                        lable: 'Pure Veg',
                        icon: MdiIcons.leaf),

                    SizedBox(
                      width: 95,
                      child: Switch(
                        value: isActive,
                        splashRadius: 0,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        onChanged: (value) => !Provider.of<ItemSelectionController>(context).value,
                        activeTrackColor: ConstantColors.red.withOpacity(0.3),
                        activeColor: ConstantColors.red,
                        inactiveTrackColor: ConstantColors.green.withOpacity(0.3),
                        inactiveThumbColor: ConstantColors.green,
                        thumbIcon: WidgetStateProperty.resolveWith<Icon?>((Set<WidgetState> states) {
                          if (states.contains(WidgetState.selected)) {
                            return Icon(MdiIcons.circleBoxOutline, color: ConstantColors.white);
                          }
                          return Icon(MdiIcons.circleBoxOutline, color: ConstantColors.white); // All other states will use the default thumbIcon.
                        }),
                        trackOutlineWidth: WidgetStateProperty.resolveWith<double?>((Set<WidgetState> states) {
                          if (states.contains(WidgetState.disabled)) {
                            return 0.1;
                          }
                          return 0.1; // Use the default width.
                        }),
                      ),
                    ),

                    ToggleChip(
                        color: ConstantColors.red,
                        lable: 'Non Veg',
                        icon: MdiIcons.circleBoxOutline),
                  ],
                ),
              ],
            ),
          ),

          /// Grid of Food Items
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(2),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.7),
              itemCount: southFoodCategoryName.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              child: Image.asset(
                               southFoodCategoryImage[index],
                                height: 100,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              )),
                          Positioned(
                              bottom: 5,
                              left: 5,
                              child: Container(
                                color: ConstantColors.white,
                                child: Icon(MdiIcons.circleBoxOutline, color: ConstantColors.green, size: 18),
                              )),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8, top: 8, right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              southFoodCategoryName[index],
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              softWrap: true,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: Sizes.sm),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment:
                              CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                      ConstantColors.pink,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(8),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text("Add",
                                        style: TextStyle(
                                            color: ConstantColors.white)),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
