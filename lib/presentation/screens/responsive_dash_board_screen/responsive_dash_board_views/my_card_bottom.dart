import 'package:flutter/material.dart';

import '../../../styles/app_styles.dart';

class MyCardBottom extends StatelessWidget {
  const MyCardBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FittedBox(
              child: Text(
                '0918 8124 0042 8129',
                style: AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),
              ),
            ),
            Text(
              '12/20 - 124',
              style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),
            )
          ],
        ),
      ],
    );
  }
}
