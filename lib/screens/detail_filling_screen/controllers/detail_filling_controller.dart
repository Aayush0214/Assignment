import 'package:flutter/material.dart';

class DetailFillingController extends ChangeNotifier{

  /// Variables
  DateTime occasionDate = DateTime.now();
  TimeOfDay startTime = TimeOfDay.now(), endTime = TimeOfDay.now();
  double totalGuest = 10.0;
  double totalPrice = 0.0;
  int pricePerPlate = 240;

  /// Function for time picking
  Future<void> pickTimeRange(BuildContext context) async {
    // Pick Start Time
    final pickedStartTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedStartTime != null) {
      // Pick End Time
      final pickedEndTime = await showTimePicker(
        context: context,
        initialTime: pickedStartTime,
      );

      if (pickedEndTime != null) {
        startTime = pickedStartTime;
        endTime = pickedEndTime;
      }
    }
    notifyListeners();
  }

  /// Function for selecting date
  Future<void> selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      occasionDate = picked;
    }
    notifyListeners();
  }

  /// Function for Changing Guest Count
  Future<void> totalGuestCount(double value) async{
    totalGuest = value;
    totalPrice = totalGuest * 240;
    notifyListeners();
  }

  /// Increment guest count by 1
  Future<void> incrementGuestCount() async{
    if (totalGuest.round() < 1500){
      totalGuest = totalGuest + 1;
      totalPrice = totalGuest * 240;
    }
    notifyListeners();
  }

  /// decrement guest count by 1
  Future<void> decrementGuestCount() async{
    if (totalGuest.round() > 10){
      totalGuest = totalGuest - 1;
      totalPrice = totalGuest * 240;
    }
    notifyListeners();
  }

}