import 'package:flutter/material.dart';

import '../../../utils/constant/image_strings.dart';

class ItemSelectionController extends ChangeNotifier{

  /// Switch button value
  bool value = false;

  /// All Indian food category
  List<String> foodCategoryImage = [
    ConstantImages.samosa,
    ConstantImages.biryani,
    ConstantImages.sweets
  ];
  List<String> foodCategoryString = ["Starters", "Mains", "Sweets"];
  List<String> foodCategoryQuantity = ["2/2", "2/2", "0/1"];
  List<bool> isActive = [true, false, false];

  /// South Indian food category
  List<String> southFoodCategoryImage = [
    ConstantImages.idliSambar,
    ConstantImages.appam,
    ConstantImages.dosa,
    ConstantImages.vada,
    ConstantImages.pongal,
    ConstantImages.bonda,
    ConstantImages.meduVada,
    ConstantImages.idiyAppam
  ];
  List<String> southFoodCategoryName = [
    "Idli Sambar",
    "Appam",
    "Dosa",
    "Wada",
    "Pongal",
    "Bonda",
    "Medu Vada",
    "Idiyappam",
  ];


}