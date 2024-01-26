import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../styles/app_images.dart';
import '../../../styles/app_styles.dart';

class MyCardHeader extends StatelessWidget {
  final int index;
  const MyCardHeader({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Name card ${index+1}',
                  style:
                      AppStyles.styleRegular16(context).copyWith(color: Colors.white)),
              Text('Syah Bandi', style: AppStyles.styleMedium20(context)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: SvgPicture.asset(Assets.imagesGallery),
        ),
      ],
    );
  }
}
