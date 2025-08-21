import 'package:flutter/material.dart';

import '../../../../data/models/transaction_history_model.dart';
import 'transaction_history_item.dart';

class TransactionHistoryListView extends StatelessWidget {

  const TransactionHistoryListView({super.key, });
  static List<TransactionHistoryModel> transactionsHistoryModel = [
    TransactionHistoryModel(
        title: 'Cash Withdrawal',
        subTitle: '13 Apr, 2022',
        price: r'$20,129',
        isWithdrawal: true),
    TransactionHistoryModel(
        title: 'Landing Page project',
        subTitle: '13 Apr, 2022 at 3:30 PM',
        price: r'$2,000',
        isWithdrawal: false),
    TransactionHistoryModel(
        title: 'Juni Mobile App project',
        subTitle: '13 Apr, 2022 at 1:30 PM',
        price: r'$20,129',
        isWithdrawal: false)
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return TransactionHistoryItem(
              transactionHistoryModel: transactionsHistoryModel[index]);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemCount: transactionsHistoryModel.length);
  }
}
