import 'package:flutter/material.dart';

import '../../../styles/app_styles.dart';
import 'all_expenses_header_range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        const AllExpensesHeaderRangeOption()
      ],
    );
  }
}
