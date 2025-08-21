import 'package:flutter/material.dart';
import '../layouts/dash_board_mobile_layout.dart';
import '../layouts/dash_board_tablet_layout.dart';
import '../widgets/adaptive_layout_widget.dart';
import '../layouts/dash_board_desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayoutWidget(
      mobileLayout: (context) => const DashBoardMobileLayout(),
      tabletLayout: (context) => const DashBoardTabletLayout(),
      desktopLayout: (context) => const DashBoardDesktopLayout(),
    );
  }
}
