import 'package:flutter/material.dart';
import 'package:responsive_dash_board/presentation/widgets/custom_container_widget.dart';

import '../responsive_dash_board_views/income_section_view.dart';
import '../responsive_dash_board_views/my_card-and_transaction_sections.dart';
import '../responsive_dash_board_views/my_card_page_view.dart';
import '../responsive_dash_board_views/my_card_section.dart';
import '../responsive_dash_board_views/transaction_history.dart';

class ResponsiveDashBoardSection3 extends StatelessWidget {
  final bool isShrinkWrap;
  const ResponsiveDashBoardSection3({super.key, required this.isShrinkWrap});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: isShrinkWrap,
      physics: isShrinkWrap?const NeverScrollableScrollPhysics():const AlwaysScrollableScrollPhysics(),
      children: const [
        MyCardAndTransactionSections(),
        IncomeSectionView()
      ],
    );
  }
}









