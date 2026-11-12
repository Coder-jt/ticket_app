import 'package:flutter/cupertino.dart';

class AppLayoutBuilderWidget extends StatelessWidget {

  final int randomDivider;
  const AppLayoutBuilderWidget({super.key, required this.randomDivider});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      print("${constraints.constrainWidth()}");
      return Flex(direction: Axis.horizontal);
    });
  }
}
