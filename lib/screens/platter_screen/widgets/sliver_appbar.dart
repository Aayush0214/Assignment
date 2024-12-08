import 'package:flutter/material.dart';

import '../../../utils/constant/constant_colors.dart';
import '../../../utils/constant/image_strings.dart';
import '../../../utils/constant/sizes.dart';

class SliverAppbarWidget extends StatefulWidget {
  const SliverAppbarWidget({super.key});

  @override
  State<SliverAppbarWidget> createState() => _SliverAppbarWidgetState();
}

class _SliverAppbarWidgetState extends State<SliverAppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      collapsedHeight: 180,
      expandedHeight: 180,
      backgroundColor: ConstantColors.scaffoldBackground,
      pinned: false,
      leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back, color: ConstantColors.white, size: 28)),
      title: Text('Wedding', style: TextStyle(fontWeight: FontWeight.w400, color: ConstantColors.white),),
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(ConstantImages.wedding, fit: BoxFit.cover, height: 100,colorBlendMode: BlendMode.lighten,),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: Sizes.md, left: Sizes.sm, right: Sizes.sm, bottom: Sizes.xs),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ConstantColors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: (){},
                    child: Text('Bulk Food Delivery', style: TextStyle(fontWeight: FontWeight.w400, color: ConstantColors.blue, fontSize: 14)),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: (){},
                    child: Text('Catering Service', style: TextStyle(fontWeight: FontWeight.w400, color: ConstantColors.grey, fontSize: 14)),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: TabBar(
                indicatorColor: ConstantColors.pink,
                labelColor: ConstantColors.pink,
                unselectedLabelColor: ConstantColors.unSelected,
                isScrollable: true,
                tabAlignment: TabAlignment.center,
                tabs: const [
                  Tab(text: "ALL (8)"),
                  Tab(text: "Breakfast"),
                  Tab(text: "Lunch & Dinner"),
                  Tab(text: "Snacks"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
