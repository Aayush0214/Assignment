import 'package:craftmyplate/screens/platter_screen/widgets/card_header.dart';
import 'package:craftmyplate/screens/platter_screen/widgets/food_subcategories.dart';
import 'package:craftmyplate/screens/platter_screen/widgets/pricing_and_guest_count.dart';
import 'package:dotted_separator/dotted_separator.dart';

import '../../../common/widgets/divider/common_divider.dart';
import '../../../utils/constant/constant_colors.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.only(bottom: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Main image Content
          const CardHeader(),

          /// Food details, Categories
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// Food Title
                const Text(
                  "Indian Soiree",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                CommonDivider(
                    dividerColor: ConstantColors.grey.withOpacity(0.3),
                    thickness: 0.3),

                /// Food Sub-Categories
                const FoodSubcategories(),

                CommonDivider(
                    dividerColor: ConstantColors.grey.withOpacity(0.6),
                    thickness: 0.5),

                /// Pricing, Guest Count
                const PricingAndGuestCount(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}