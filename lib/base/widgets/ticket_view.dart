import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';

import '../res/styles/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 179,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppStyles.ticketBlue,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
        ),
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Text("NYC", style: AppStyles.headLineStyle3.copyWith(color: Colors.white)),
                  Expanded(child: Container()),
                  const BigDot(),
                  Expanded(child: Container(
                    child: const Stack(
                      children: [
                        SizedBox(
                          child: AppLayoutBuilderWidget(randomDivider: 6,),
                        ),
                        Center(child: Text("Planc"),)
                      ],
                    ),
                  )),
                  const BigDot(),
                  Expanded(child: Container()),
                  Text("NYC", style: AppStyles.headLineStyle3.copyWith(color: Colors.white)),

                ],
              ),
              const Row()
            ],
          ),
        ),
      ),
    );
  }
}
