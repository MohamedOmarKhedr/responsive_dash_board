import 'package:flutter/material.dart';
import 'package:responsive_dash_board/presentation/widgets/custom_text_field_widget.dart';

import '../../../styles/app_styles.dart';

class CustomTitleTextField extends StatelessWidget {
  final String title,hint;
  const CustomTitleTextField({super.key, required this.title, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style:AppStyles.styleMedium16(context)),
        CustomTextFieldWidget(hint: hint,)
      ],
    );
  }
}
