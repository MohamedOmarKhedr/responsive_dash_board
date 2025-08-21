import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/presentation/widgets/custom_dot_Indicator_widget.dart';

import 'dots_indicators_view.dart';
import 'my_card.dart';

class MyCardPageView extends StatelessWidget {
  final PageController pageController;
  const MyCardPageView({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      children: List.generate(3, (index) => MyCard(index: index,)),
    );
  }
}


