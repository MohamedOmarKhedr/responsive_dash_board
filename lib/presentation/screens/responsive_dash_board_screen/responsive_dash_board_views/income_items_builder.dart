import 'package:flutter/material.dart';
import 'package:responsive_dash_board/data/models/income_item_model.dart';
import 'income_item.dart';

class IncomeItemBuilder extends StatelessWidget {
  const IncomeItemBuilder({super.key});

  static List<IncomeItemModel> incomeItems = [
    IncomeItemModel(
        itemName: 'Design service',
        percent: 40,
        colorItem: const Color(0xff208CC8),
    ),
    IncomeItemModel(
      itemName: 'Design product',
      percent: 25,
      colorItem: const Color(0xff4EB7F2),
    ),
    IncomeItemModel(
      itemName: 'Product royalti',
      percent: 20,
      colorItem: const Color(0xff064061),
    ),
    IncomeItemModel(
      itemName: 'Other',
      percent: 22,
      colorItem: const Color(0xffE2DECD),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(incomeItems.length, (index) => IncomeItem(
        incomeItemModel: incomeItems[index]
      )
    ));

  }
}

