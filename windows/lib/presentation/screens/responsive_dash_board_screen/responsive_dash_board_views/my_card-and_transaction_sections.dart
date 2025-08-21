import 'package:flutter/material.dart';

import '../../../widgets/custom_container_widget.dart';
import 'my_card_section.dart';
import 'transaction_history.dart';

class MyCardAndTransactionSections extends StatelessWidget {
  const MyCardAndTransactionSections({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainerWidget(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 20, bottom: 20, right: 20),
      child: Column(
        children: [
          MyCardSection(),
          Divider(height: 40,color: Color(0xfff1f1f1),),
          TransactionHistory()
        ],
      ),
    );
  }
}
