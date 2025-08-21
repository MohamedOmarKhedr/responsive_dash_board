import 'package:flutter/material.dart';
import 'package:responsive_dash_board/presentation/screens/responsive_dash_board_screen/responsive_dash_board_views/custom_drawer.dart';

import '../screens/responsive_dash_board_screen/responsive_dash_board_sections/responsive_dash_board_section1.dart';
import '../screens/responsive_dash_board_screen/responsive_dash_board_sections/responsive_dash_board_section2.dart';
import '../screens/responsive_dash_board_screen/responsive_dash_board_sections/responsive_dash_board_section3.dart';

class DashBoardMobileLayout extends StatefulWidget {
  const DashBoardMobileLayout({super.key});

  @override
  State<DashBoardMobileLayout> createState() => _DashBoardMobileLayoutState();
}

class _DashBoardMobileLayoutState extends State<DashBoardMobileLayout> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: const Color(0xfffafafa),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(Icons.menu),
        ),
      ),
      drawer: const Drawer(child: CustomDrawer()),
      backgroundColor: const Color(0xffF7F9FA),
      body: ListView(
        children: const [
          ResponsiveDashBoardSection2(
            isShrinkWrap: true,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: ResponsiveDashBoardSection3(
              isShrinkWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
