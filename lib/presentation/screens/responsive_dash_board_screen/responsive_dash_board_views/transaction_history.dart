import 'package:flutter/material.dart';
import 'package:responsive_dash_board/presentation/screens/responsive_dash_board_screen/responsive_dash_board_views/transaction_history_list_view.dart';
import 'package:responsive_dash_board/presentation/styles/app_styles.dart';



class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Transaction History', style: AppStyles.styleSemiBold20(context)),
            const Spacer(),
            Text('See all',
                style: AppStyles.styleMedium16(context)
                    .copyWith(color: const Color(0xff4EB7F2))),
          ],
        ),
        const SizedBox(height: 20),
        Text('13 April 2022',
            style: AppStyles.styleRegular16(context)
                .copyWith(color: const Color(0xffAAAAAA))),
        const SizedBox(height: 16),
        const TransactionHistoryListView()
      ],
    );
  }
}

