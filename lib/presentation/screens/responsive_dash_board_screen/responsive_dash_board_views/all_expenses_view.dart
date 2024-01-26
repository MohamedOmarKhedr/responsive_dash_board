import 'package:flutter/material.dart';
import 'all_expenses_header.dart';
import 'all_expenses_items_builder.dart';

class AllExpensesView extends StatelessWidget {
  const AllExpensesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 0,bottom: 20,left: 20,right: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: const Column(children: [
        AllExpensesHeader(),
        SizedBox(
          height: 16,
        ),
        AllExpensesItemsBuilder()
      ]),
    );
  }
}
