import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.imagePath,
      required this.color,
      required this.imageColor});
  final String imagePath;
  final Color color;
  final Color imageColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: color,
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                                imagePath,
                      colorFilter: ColorFilter.mode(imageColor, BlendMode.srcIn),
                              ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
            angle: 1.57079633 + 1.57079633,
            child: const Icon(Icons.arrow_back_ios_new_rounded,
                color: Color(0xff604061)))
      ],
    );
  }
}
