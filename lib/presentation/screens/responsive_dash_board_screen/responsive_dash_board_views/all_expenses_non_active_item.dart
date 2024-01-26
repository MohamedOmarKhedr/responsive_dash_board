import 'package:flutter/material.dart';
import '../../../../data/models/all_expenses_item_model.dart';
import '../../../styles/app_styles.dart';
import 'all_expenses_item_header.dart';

class AllExpensesNonActiveItem extends StatelessWidget {
  final AllExpensesItemModel allExpensesItemModel;
  const AllExpensesNonActiveItem(
      {super.key, required this.allExpensesItemModel});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: const Color(0xfff1f1f1)),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            imagePath: allExpensesItemModel.image, color: const Color(0xfffafafa), imageColor: const Color(0xff4EB7F2),
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.price,
              style: AppStyles.styleSemiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}
