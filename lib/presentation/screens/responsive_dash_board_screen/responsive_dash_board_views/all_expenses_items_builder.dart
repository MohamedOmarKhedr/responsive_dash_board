import 'package:flutter/material.dart';

import '../../../../data/models/all_expenses_item_model.dart';
import '../../../styles/app_images.dart';
import 'all_expenses_item.dart';

class AllExpensesItemsBuilder extends StatefulWidget {
  const AllExpensesItemsBuilder({super.key});

  @override
  State<AllExpensesItemsBuilder> createState() =>
      _AllExpensesItemsBuilderState();
}

class _AllExpensesItemsBuilderState extends State<AllExpensesItemsBuilder> {
  static const List<AllExpensesItemModel> allExpensesItems = [
    AllExpensesItemModel(
        date: 'April 2022',
        image: Assets.imagesBalance,
        title: 'Balance',
        price: r'$20,129'),
    AllExpensesItemModel(
        date: 'April 2022',
        image: Assets.imagesIncome,
        title: 'Income',
        price: r'$20,129'),
    AllExpensesItemModel(
        date: 'April 2022',
        image: Assets.imagesExpenses,
        title: 'Expenses',
        price: r'$20,129'),
  ];

  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:
        allExpensesItems.asMap().entries.map((e) {
          int index =e.key;
          AllExpensesItemModel item = e.value;
          if(index==1){
            return Expanded(
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    if (activeIndex != index) {
                      activeIndex = index;
                    }
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: AllExpensesItem(
                    allExpensesItemModel: allExpensesItems[index],
                    isActive: activeIndex == index,
                  ),
                ),
              ),
            );
          } else {
            return Expanded(
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    if (activeIndex != index) {
                      activeIndex = index;
                    }
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: AllExpensesItem(
                    allExpensesItemModel: allExpensesItems[index],
                    isActive: activeIndex == index,
                  ),
                ),
              ),
            );
          }
        }).toList(),



    );
  }
}
