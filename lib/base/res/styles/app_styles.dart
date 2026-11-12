import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles{
  static Color primaryColor = primary;

  static Color ticketBlue = const Color(0xFF526799);

  static Color ticketOrange = const Color(0xFFF37B67);

  static Color bgColor = const Color(0xFFeeedf2);
  //normal text
  static TextStyle textStyle = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500
  );
  static Color textColor = const Color(0xFF3b3b3b);
  //Heading 1
  static TextStyle headLineStyle1 = TextStyle(
  fontSize: 26,
  fontWeight: FontWeight.bold,
  color: textColor
  );
  // Heading 2
  static TextStyle headLineStyle2 = TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.bold,
      color: textColor
  );
  //Heading 3
  static TextStyle headLineStyle3 = const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w500
  );
}