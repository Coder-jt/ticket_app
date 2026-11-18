import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xFFF4F6FD)
      ),
      child: Row(
        children: [
         AppTabs(tabText: "All Tickets",),
          AppTabs(tabText: "Hotels", tabBorder: true, tabColor: true,)
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  final String tabText;
  final bool tabBorder;
  final bool tabColor;
  const AppTabs({super.key,this.tabText="", this.tabBorder=false, this.tabColor=false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return  Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      width: size.width*0.44,
      child: Center(child: Text(tabText)),
      decoration: BoxDecoration(
          color: tabColor == false ? Colors.white : Colors.transparent,
          borderRadius: tabBorder==false ?
          const BorderRadius.horizontal(left: Radius.circular(50)): const BorderRadius.horizontal(right: Radius.circular(50))
      ),
    );
  }
}

