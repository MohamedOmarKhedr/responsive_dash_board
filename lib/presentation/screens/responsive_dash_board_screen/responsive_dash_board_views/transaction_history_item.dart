import 'package:flutter/material.dart';

import '../../../../data/models/transaction_history_model.dart';
import '../../../styles/app_styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  final TransactionHistoryModel transactionHistoryModel;
  const TransactionHistoryItem(
      {super.key,
        required this.transactionHistoryModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xfffafafa),
          borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transactionHistoryModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionHistoryModel.subTitle,
          style: AppStyles.styleRegular16(context).copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          transactionHistoryModel.price,
          style: AppStyles.styleSemiBold20(context).copyWith(color:transactionHistoryModel.isWithdrawal? const Color(0xffF3735E): const Color(0xff7DD97B)),
        ),
      ),
    );
  }
}