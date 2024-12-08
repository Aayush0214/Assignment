import 'package:craftmyplate/screens/item_selection_screen/widgets/bottom_navigation.dart';
import 'package:craftmyplate/screens/item_selection_screen/widgets/main_content.dart';
import 'package:craftmyplate/screens/item_selection_screen/widgets/sidebar_categories.dart';
import 'package:craftmyplate/utils/constant/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class ItemSelectionScreen extends StatefulWidget {
  const ItemSelectionScreen({super.key});

  @override
  State<ItemSelectionScreen> createState() => _ItemSelectionScreenState();
}

class _ItemSelectionScreenState extends State<ItemSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.scaffoldBackground,
      appBar: AppBar(
          backgroundColor: ConstantColors.white,
          centerTitle: true,
          elevation: 1,
          leading: IconButton(
            icon: const Icon(Icons.arrow_circle_left,
                color: Colors.black, size: 26),
            onPressed: () => Navigator.pop(context),
          ),
          title: Row(
            children: [
              Text('South Indian Breakfast',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: ConstantColors.black,
                      fontSize: 18),
                  softWrap: true,
                  overflow: TextOverflow.clip),
              IconButton(
                  onPressed: () {},
                  icon:
                  Icon(Iconsax.edit, color: ConstantColors.black, size: 18))
            ],
          ),
          shape: Border(
              bottom: BorderSide(color: ConstantColors.black, width: 0.2))),
      body: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// Sidebar Categories
          SidebarCategories(),

          /// Main Content
          MainContent(),
        ],
      ),
      floatingActionButton: Stack(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ConstantColors.black,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
            ),
              onPressed: () {},
              child: Text('Add Ons', style: TextStyle(
                  fontWeight: FontWeight.w400, color: ConstantColors.white),)),

          Positioned(
            top: 0,
            right: 0,
            child: CircleAvatar(
              radius: 12,
              backgroundColor: ConstantColors.pink,
              child: Icon(MdiIcons.plus, color: ConstantColors.white, size: 18),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
