import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/presentation/styles/app_styles.dart';

import 'dots_indicators_view.dart';
import 'my_card.dart';
import 'my_card_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController=PageController();
    pageController.addListener(() {
      setState(() {
        //round() better than toInt()
        currentPageIndex=pageController.page!.round();
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My Card',style: AppStyles.styleSemiBold20(context),),
        const SizedBox(height: 10),
        MyCardPageView(pageController: pageController,),
        const SizedBox(height: 10),
        DotsIndicatorsView(currentPageIndex: currentPageIndex, onChangePage: onChangePage,)
      ],
    );
  }
  void onChangePage(int index){
    setState(() {
      currentPageIndex=index;
      pageController.animateToPage(
        currentPageIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    });
  }
}
