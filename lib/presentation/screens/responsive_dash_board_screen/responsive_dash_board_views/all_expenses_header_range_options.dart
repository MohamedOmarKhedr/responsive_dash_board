import 'package:flutter/material.dart';

import '../../../styles/app_styles.dart';

class AllExpensesHeaderRangeOption extends StatelessWidget {
  const AllExpensesHeaderRangeOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0xfff1f1f1), width: 1),
          borderRadius: BorderRadius.circular(12)),
      child: Row(children: [
        Text(
          'Monthly',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          width: 18,
        ),
        Transform.rotate(
            angle: -1.57079633,
            child: const Icon(Icons.arrow_back_ios_new_rounded,
                color: Color(0xff604061)))
      ]),
    );
  }
}
