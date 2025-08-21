import 'package:flutter/material.dart';

import '../responsive_dash_board_views/all_expenses_view.dart';
import '../responsive_dash_board_views/quick_invoice_view.dart';

class ResponsiveDashBoardSection2 extends StatelessWidget {
  final bool isShrinkWrap;
  const ResponsiveDashBoardSection2({super.key, required this.isShrinkWrap});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: isShrinkWrap,
      physics: isShrinkWrap?const NeverScrollableScrollPhysics():const AlwaysScrollableScrollPhysics(),
      children: const [
        AllExpensesView(),
        QuickInvoiceView()
      ],
    );
  }
}
