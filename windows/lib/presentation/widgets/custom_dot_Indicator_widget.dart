import 'package:flutter/material.dart';

class CustomDotIndicatorWidget extends StatelessWidget {
  final bool isActive;
  const CustomDotIndicatorWidget({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive?32:8,
      height: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isActive?const Color(0xff4EB7F2):const Color(0xffe7e7e7)
      ),
    );
  }
}
