import 'package:flutter/material.dart';
import 'package:responsive_dash_board/presentation/screens/responsive_dash_board_screen/responsive_dash_board_sections/responsive_dash_board_section2.dart';
import 'package:responsive_dash_board/presentation/screens/responsive_dash_board_screen/responsive_dash_board_sections/responsive_dash_board_section3.dart';
import '../screens/responsive_dash_board_screen/responsive_dash_board_sections/responsive_dash_board_section1.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FA),
      body: Row(
        children: [
          const Expanded(child:ResponsiveDashBoardSection1()),
          Expanded(
            flex: 5,
            child: ListView(
              children: const [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(flex: 3, child: Padding(
                      padding: EdgeInsets.only(top:20),
                      child: ResponsiveDashBoardSection2(isShrinkWrap: true,),
                    )),
                    Expanded(flex: 2,child: ResponsiveDashBoardSection3(isShrinkWrap: true,)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
