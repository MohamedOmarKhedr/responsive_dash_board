import 'package:flutter/material.dart';
import 'package:responsive_dash_board/presentation/styles/app_styles.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Income',style: AppStyles.styleSemiBold20(context),),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 16),
          decoration: BoxDecoration(
            color: const Color(0xffF1F1F1),
            borderRadius: BorderRadius.circular(12),
          ),
          child:Row(
            children: [
              const Text('Monthly'),
              const SizedBox(width: 18),
              Transform.rotate(
                  angle: -1.57079633,
                  child: const Icon(Icons.arrow_back_ios_new_rounded,
                      color: Color(0xff604061)))
            ],
          )
        )
      ],
    );
  }
}
