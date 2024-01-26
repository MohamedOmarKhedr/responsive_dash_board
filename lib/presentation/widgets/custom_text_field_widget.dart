import 'package:flutter/material.dart';

import '../styles/app_styles.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String hint;
  const CustomTextFieldWidget({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xfffafafa),
        hintText: hint,
        hintStyle: AppStyles.styleRegular16(context).copyWith(
          color: const Color(0xffaaaaaa)
        ),
        border:borderBuild(),
        enabledBorder: borderBuild(),
        focusedBorder: borderBuild(),
      ),
    );
  }
  OutlineInputBorder borderBuild(){
    return OutlineInputBorder(
        borderSide: const BorderSide(color: Color(0xfffafafa)),
        borderRadius: BorderRadius.circular(12)
    );
  }
}


