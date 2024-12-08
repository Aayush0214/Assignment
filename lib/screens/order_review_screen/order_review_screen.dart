import 'package:craftmyplate/common/widgets/divider/common_divider.dart';
import 'package:craftmyplate/screens/order_review_screen/widgets/billing_container.dart';
import 'package:craftmyplate/screens/order_review_screen/widgets/bottom_navigation_price.dart';
import 'package:craftmyplate/screens/order_review_screen/widgets/selected_details.dart';
import 'package:craftmyplate/screens/order_review_screen/widgets/selected_food.dart';
import 'package:craftmyplate/screens/order_review_screen/widgets/subtotal_value.dart';
import 'package:craftmyplate/utils/constant/constant_colors.dart';
import 'package:craftmyplate/utils/constant/sizes.dart';
import 'package:dotted_separator/dotted_separator.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OrderReviewScreen extends StatefulWidget {
  const OrderReviewScreen({super.key});

  @override
  State<OrderReviewScreen> createState() => _OrderReviewScreenState();
}

class _OrderReviewScreenState extends State<OrderReviewScreen> {
  bool _customIcon = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        title: Text(
          'Order Review',
          style: TextStyle(
              color: ConstantColors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        shadowColor: Colors.black38,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              /// Container 1, Order details
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 3,
                          blurStyle: BlurStyle.outer,
                          spreadRadius: 0.5),
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    /// --> Row 1, Food type, edit option
                    const SelectedFoodItem(foodItemName: 'Millet Breakfast'),

                    /// --> Row 2, No. of persons, selected date, selected time
                    const SelectedOrderDetails(),

                    const SizedBox(height: 12),
                    CommonDivider(
                        dividerColor: ConstantColors.black.withOpacity(0.3),
                        thickness: 0.3),

                    /// Selected item details
                    ExpansionTile(
                        enabled: true,
                        title: Text('Hide Selected Items',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: ConstantColors.grey)),
                        trailing: Icon(_customIcon
                            ? Iconsax.arrow_up_24
                            : Iconsax.arrow_down_14),
                        children: const [
                          ListTile(title: Text('Item 1')),
                          ListTile(title: Text('Item 2')),
                          ListTile(title: Text('Item 3')),
                        ],
                        onExpansionChanged: (bool expanded) {
                          setState(() {
                            _customIcon = expanded;
                          });
                        }),

                    CommonDivider(
                        dividerColor: ConstantColors.black.withOpacity(0.7),
                        thickness: 0.5),

                    /// Subtotal
                    const SubTotal(),
                  ],
                ),
              ),
              const SizedBox(height: Sizes.spaceBtwSections),

              /// Container 2, Pricing details, Discounts
              const BillingContainer(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigationPrice(),
    );
  }
}
