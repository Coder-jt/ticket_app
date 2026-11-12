import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';



void main() {
  print("Hello dart");
  runApp(const MyApp());
}

// every class is a widget
// classes overrides the build class
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}


