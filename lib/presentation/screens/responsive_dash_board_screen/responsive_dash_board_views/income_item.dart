import 'package:flutter/material.dart';

import '../../../../data/models/income_item_model.dart';
import '../../../styles/app_styles.dart';

class IncomeItem extends StatelessWidget {
  final IncomeItemModel incomeItemModel;
  const IncomeItem({super.key, required this.incomeItemModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 12,
          width: 12,
          decoration: BoxDecoration(
              color: incomeItemModel.colorItem,
              borderRadius: BorderRadius.circular(12)),
        ),
        const SizedBox(width: 10),
        Expanded(
            child: Text(
              incomeItemModel.itemName,
              style: AppStyles.styleRegular16(context),
            )),
        Text(
          '${incomeItemModel.percent}%',
          style: AppStyles.styleMedium16(context).copyWith(
              color: const Color(0xff208CC8)
          ),
        )
      ],
    );
  }
}
