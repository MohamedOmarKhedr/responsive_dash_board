import 'package:flutter/material.dart';
import 'package:responsive_dash_board/presentation/widgets/custom_container_widget.dart';

import 'income_chart.dart';
import 'income_items_builder.dart';
import 'income_section_header.dart';

class IncomeSectionView extends StatelessWidget {
  const IncomeSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainerWidget(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 20,right: 20),
      child: Column(
        children: [
          IncomeSectionHeader(),
          SizedBox(height: 20,),
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(child: AspectRatio(aspectRatio: 1,child: IncomeChart())),
                SizedBox(width: 32),
                Expanded(flex:2,child: IncomeItemBuilder())
              ],
            ),
          )
        ],
      ),
    );
  }
}