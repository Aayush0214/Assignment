import 'package:craftmyplate/screens/detail_filling_screen/controllers/detail_filling_controller.dart';
import 'package:craftmyplate/screens/item_selection_screen/controllers/item_selection_controller.dart';
import 'package:craftmyplate/screens/platter_screen/platters_controller/platters_controller.dart';
import 'package:craftmyplate/screens/platter_screen/platters_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => DetailFillingController()),
      ChangeNotifierProvider(create: (_) => ItemSelectionController()),
      ChangeNotifierProvider(create: (_) => PlatterController()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(fontFamily: 'Lexend'),
      home: const Platters(),
    );
  }
}
