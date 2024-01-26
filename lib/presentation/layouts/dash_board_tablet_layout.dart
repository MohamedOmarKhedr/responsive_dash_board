import 'package:flutter/material.dart';
import 'package:responsive_dash_board/presentation/screens/responsive_dash_board_screen/responsive_dash_board_sections/responsive_dash_board_section3.dart';

import '../screens/responsive_dash_board_screen/responsive_dash_board_sections/responsive_dash_board_section1.dart';
import '../screens/responsive_dash_board_screen/responsive_dash_board_sections/responsive_dash_board_section2.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffF7F9FA),
      body: Row(
        children: [
          const Expanded(child:ResponsiveDashBoardSection1()),
          Expanded(flex: 3, child: ListView(
            children: const [
              Padding(
                padding: EdgeInsets.only(top:20),
                child: ResponsiveDashBoardSection2(isShrinkWrap: true,),
              ),
              Padding(
                padding: EdgeInsets.only(left:20),
                child: ResponsiveDashBoardSection3(isShrinkWrap: true,),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
