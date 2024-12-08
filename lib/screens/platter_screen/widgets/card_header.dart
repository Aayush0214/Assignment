import 'package:dotted_separator/dotted_separator.dart';

import '../../../utils/constant/constant_colors.dart';

class CardHeader extends StatefulWidget {
  const CardHeader({super.key});

  @override
  State<CardHeader> createState() => _CardHeaderState();
}

class _CardHeaderState extends State<CardHeader> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Main Image
        ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.asset(
              'assets/images/image 45.png',
              height: 170,
              width: double.infinity,
              fit: BoxFit.cover,
            )),

        /// Side card view
        Positioned(
          top: 20,
          left: 0,
          child: Container(
            padding:
            const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
                gradient: ConstantColors.gradient1,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: const Text(
              "Best for 🪔 Pooja",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),

        /// Bottom right card view
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
              padding:
              const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                  color: ConstantColors.white.withOpacity(0.8),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10))),
              child: Row(
                children: [
                  Icon(Icons.person,
                      color: ConstantColors.grey, size: 18),
                  const SizedBox(width: 5),
                  Text('Min 10 - Max 120',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: ConstantColors.black,
                          fontSize: 12))
                ],
              )),
        ),
      ],
    );
  }
}
