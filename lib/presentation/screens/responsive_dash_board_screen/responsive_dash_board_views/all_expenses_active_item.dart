import 'package:flutter/material.dart';

import '../../../../data/models/all_expenses_item_model.dart';
import '../../../styles/app_styles.dart';
import 'all_expenses_item_header.dart';

class AllExpensesActiveItem extends StatelessWidget {
  final AllExpensesItemModel allExpensesItemModel;
  const AllExpensesActiveItem({super.key, required this.allExpensesItemModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
          color: const Color(0xff4EB7F2),
          border: Border.all(width: 1, color: const Color(0xff4EB7F2)),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            imagePath: allExpensesItemModel.image, color: const Color(0xff60BEF3), imageColor: Colors.white,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleMedium16(context).copyWith(
              color:Colors.white
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14(context).copyWith(
                color:Colors.white
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.price,
              style: AppStyles.styleSemiBold24(context).copyWith(
                  color:Colors.white
              ),
            ),
          ),
        ],
      ),
    );
  }
}
