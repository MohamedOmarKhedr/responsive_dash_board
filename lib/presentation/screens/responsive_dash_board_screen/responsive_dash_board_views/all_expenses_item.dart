import 'package:flutter/material.dart';
import 'package:responsive_dash_board/data/models/all_expenses_item_model.dart';
import 'all_expenses_active_item.dart';
import 'all_expenses_non_active_item.dart';

class AllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel allExpensesItemModel;
  final bool isActive;
  const AllExpensesItem(
      {super.key, required this.allExpensesItemModel, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: isActive,
        replacement: AllExpensesNonActiveItem(
          allExpensesItemModel: allExpensesItemModel,
        ),
        child: AllExpensesActiveItem(
          allExpensesItemModel: allExpensesItemModel,
        ));
  }
}
