import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

import '../res/styles/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            // blue part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Center(
                child: Column(
                  children: [
                    //Show departure and destination with Icons first line
                    Row(
                      children: [
                        const TextStyleThird(text: "NYC"),
                        Expanded(child: Container()),
                        const BigDot(),
                        Expanded(
                            child: Container(
                          child: Stack(
                            children: [
                              const SizedBox(
                                height: 24,
                                child: AppLayoutBuilderWidget(
                                  randomDivider: 6,
                                ),
                              ),
                              Center(
                                  child: Transform.rotate(
                                      angle: 1.57,
                                      child: const Icon(
                                          Icons.local_airport_rounded,
                                          color: Colors.white)))
                            ],
                          ),
                        )),
                        const BigDot(),
                        Expanded(child: Container()),
                        const TextStyleThird(text: "LDN"),
                      ],
                    ),
                    //Show departure and destination with time
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 100,
                          child:TextStyleFourth(text: "New-York"),
                        ),
                        Expanded(child: Container()),
                        const TextStyleFourth(text: "8H 30M"),
                        Expanded(child: Container()),
                        const SizedBox(
                          width: 100,
                          child: TextStyleFourth(text: "London", align: TextAlign.end,),
                          //),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // circles and dots
            Container(
                color: AppStyles.ticketOrange,
                child: const Row(
                  children: [
                    BigCircle(isRight: false,),
                    Expanded(child: AppLayoutBuilderWidget(
                      randomDivider: 16, width: 6,
                    )),
                    BigCircle( isRight: true,)
                  ],
                ),
            ),
            // orange part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child: Center(
                child: Column(
                  children: [
                    //Show departure and destination with Icons first line
                    Row(
                      children: [
                        const TextStyleThird(text: "1 MAY"),
                        Expanded(child: Container()),
                        //const BigDot(),
                        Expanded(
                            child: Container(
                          child: const Stack(
                            children: [
                              //const SizedBox(
                                //height: 24,
                                //child: AppLayoutBuilderWidget(
                                  //randomDivider: 6,
                                //),
                              //),
                              Center(
                                  child: TextStyleThird(text: "08:00AM")
                              )
                            ],
                          ),
                        )),
                        //const BigDot(),
                        Expanded(child: Container()),
                        const TextStyleThird(text: "23"),
                      ],
                    ),
                    //Show departure and destination with time
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text("Date",
                            style: AppStyles.headLineStyle4
                                .copyWith(color: Colors.white)),
                        Expanded(child: Container()),
                        Text("Departure time",
                            style: AppStyles.headLineStyle4
                                .copyWith(color: Colors.white)),
                        Expanded(child: Container()),
                        Text("Number",
                            style: AppStyles.headLineStyle4
                                .copyWith(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
