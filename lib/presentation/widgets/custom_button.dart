import 'package:flutter/material.dart';
import 'package:responsive_dash_board/presentation/styles/app_styles.dart';

class CustomButton extends StatelessWidget {
  final String textButton;
  final Color textColor,buttonColor;
  const CustomButton({super.key, required this.textButton, required this.textColor, required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          )
        ),
          onPressed: () {},
          child: Text(
            textButton,
            style: AppStyles.styleSemiBold18(context).copyWith(
              color: textColor,
            ),
          )),
    );
  }
}
