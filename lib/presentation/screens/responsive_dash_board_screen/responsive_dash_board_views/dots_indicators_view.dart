import 'package:flutter/material.dart';

import '../../../widgets/custom_dot_Indicator_widget.dart';

class DotsIndicatorsView extends StatefulWidget {
  final int currentPageIndex;
  final Function(int index) onChangePage;
  const DotsIndicatorsView({super.key, required this.currentPageIndex, required this.onChangePage});

  @override
  State<DotsIndicatorsView> createState() => _DotsIndicatorsViewState();
}

class _DotsIndicatorsViewState extends State<DotsIndicatorsView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) => Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: InkWell(
          onTap: (){
            setState(() {
              widget.onChangePage(index);
            });
          },
            child: CustomDotIndicatorWidget(isActive: widget.currentPageIndex==index)),
      )),
    );
  }
}
