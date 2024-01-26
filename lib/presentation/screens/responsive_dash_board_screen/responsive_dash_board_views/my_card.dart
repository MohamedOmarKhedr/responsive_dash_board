import 'package:flutter/material.dart';

import '../../../styles/app_images.dart';
import 'my_card_bottom.dart';
import 'my_card_header.dart';

class MyCard extends StatelessWidget {
  final int index;
  const MyCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration:  BoxDecoration(
            color:const Color(0xff4EB7F2),
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
                image: AssetImage(Assets.imagesCardBackground),
              fit: BoxFit.fill
            )
        ),
        child: Column(
          children: [
            MyCardHeader(index: index,),
            const Spacer(),
            const MyCardBottom(),
             const Flexible(flex: 0,child: SizedBox(height: 10,))
          ],
        ),
      ),
    );
  }
}