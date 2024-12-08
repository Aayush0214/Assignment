import 'package:craftmyplate/screens/detail_filling_screen/widgets/dynamic_price_value.dart';
import 'package:craftmyplate/screens/detail_filling_screen/widgets/expansion_tile.dart';
import 'package:craftmyplate/screens/detail_filling_screen/widgets/guest_count_buttons.dart';
import 'package:craftmyplate/screens/detail_filling_screen/widgets/guest_count_slider.dart';
import 'package:craftmyplate/screens/detail_filling_screen/widgets/header.dart';
import 'package:craftmyplate/screens/detail_filling_screen/widgets/selected_date_time.dart';
import 'package:craftmyplate/screens/detail_filling_screen/widgets/selected_food_price.dart';
import 'package:craftmyplate/screens/order_review_screen/order_review_screen.dart';
import 'package:craftmyplate/utils/constant/constant_colors.dart';
import 'package:craftmyplate/utils/constant/sizes.dart';
import 'package:dotted_separator/dotted_separator.dart';
import 'package:flutter/material.dart';
import '../../common/widgets/divider/common_divider.dart';

class OrderFillingScreen extends StatefulWidget {
  const OrderFillingScreen({super.key});

  @override
  State<OrderFillingScreen> createState() => _OrderFillingScreenState();
}

class _OrderFillingScreenState extends State<OrderFillingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
          'Fill details',
          style: TextStyle(
              color: ConstantColors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        shadowColor: Colors.black38,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              /// Selected Meal Title
              const Header(foodName: 'South Indian Breakfast'),

              const SizedBox(height: Sizes.sm),

              /// --> Container 1, Selected occasion, date and time selection
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// --> Row 1, Expansion Tile with Occasion options
                    const CustomExpansionTile(
                      occasion: 'Birthday',
                      children: [
                        ListTile(title: Text('Wedding')),
                        ListTile(title: Text('Anniversary')),
                        ListTile(title: Text('Family Function')),
                      ],
                    ),

                    CommonDivider(
                        dividerColor: ConstantColors.black.withOpacity(0.5),
                        thickness: 0.3,
                        height: 25),

                    /// --> Row 2, Date and Time Selection
                    Text('Date and Time',
                        style: TextStyle(
                            color: ConstantColors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16)),
                    const SizedBox(height: Sizes.sm),
                    const SelectedDateAndTime(),
                  ],
                ),
              ),

              const SizedBox(height: Sizes.spaceBtwSections),

              /// --> Container 2, Pricing, discount, per plate price
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// --> Row 1, Pricing, discount, total value
                    const FoodAndDiscountValue(),

                    CommonDivider(
                        dividerColor: ConstantColors.black.withOpacity(0.8),
                        thickness: 0.3,
                        height: 40),

                    ///--> Row 2, Guest count
                    const GuestCountButtons(),

                    const SizedBox(height: Sizes.spaceBtwItems),

                    /// --> Row 3, Guest Count Slider
                    const GuestCountSlider(),

                    CommonDivider(
                        dividerColor: ConstantColors.unSelected,
                        thickness: 0.2,
                        height: 40),

                    /// Dynamic Pricing Per Plate
                    const DynamicPriceValue(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 75,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black12,
              blurRadius: 3,
              blurStyle: BlurStyle.outer,
              spreadRadius: 0.5),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ElevatedButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const OrderReviewScreen())),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ConstantColors.blue,
                    padding: const EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Order Review',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
