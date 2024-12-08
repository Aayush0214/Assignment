import 'package:craftmyplate/screens/platter_screen/widgets/food_card.dart';
import 'package:craftmyplate/screens/platter_screen/widgets/sliver_appbar.dart';
import 'package:flutter/material.dart';

class Platters extends StatefulWidget {
  const Platters({super.key});

  @override
  State<Platters> createState() => _PlattersState();
}

class _PlattersState extends State<Platters> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              const SliverAppbarWidget(),
            ];
          },
          body: TabBarView(
            children: List.generate(
                4,
                (index) => ListView.builder(
                padding: const EdgeInsets.all(12),
                itemCount: 4,
                itemBuilder: (context, index) => const FoodCard(),
              ),
            ),
          ),
        )
      ),
    );
  }
}


