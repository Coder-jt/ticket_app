// Import Flutter packages.
// Cupertino provides iOS-style widgets.
// Material provides Material Design widgets, such as Colors and other UI elements.
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// A StatelessWidget is a widget that does not manage its own changing state.
// This widget creates a horizontal row of small white rectangles.
class AppLayoutBuilderWidget extends StatelessWidget {
// This value determines how many rectangles should fit across the available width.
// A smaller randomDivider means more rectangles.
  final int randomDivider;
  final double width;

// The constructor requires a value for randomDivider.
// 'required' means you must provide this value when creating the widget.
  const AppLayoutBuilderWidget(
      {super.key, required this.randomDivider, this.width = 3});

// The build method describes what the widget should display on the screen.
  @override
  Widget build(BuildContext context) {
// LayoutBuilder allows us to access the available space
// that the parent widget gives to this widget.
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
// Get the available width and print it in the debug console.
// This is useful for understanding how much horizontal space we have.
        print("${constraints.constrainWidth()}");

// Flex allows us to arrange multiple widgets in a row or column.
        return Flex(
// Distributes the available space between the children.
// The first child starts at the beginning and the last at the end.
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

// Axis.horizontal means the children will be arranged from left to right.
          direction: Axis.horizontal,

// List.generate creates a list containing multiple widgets.
//
// The number of widgets is calculated by:
// 1. Getting the available width.
// 2. Dividing it by randomDivider.
// 3. Using floor() to round the result down to a whole number.
//
// For example:
// Available width = 400
// randomDivider = 20
// 400 / 20 = 20 rectangles.
          children: List.generate(
            (constraints.constrainWidth() / randomDivider).floor(),

// This function runs once for every rectangle we want to create.
// 'index' represents the position of the current rectangle in the list.
            (index) => SizedBox(
// Each rectangle will be 3 pixels wide.
              width: width,

// Each rectangle will be 1 pixel high.
              height: 1,

// DecoratedBox allows us to apply visual decoration to a widget.
              child: DecoratedBox(
                decoration: BoxDecoration(
// Sets the rectangle's background colour to white.
                  color: Colors.white,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
