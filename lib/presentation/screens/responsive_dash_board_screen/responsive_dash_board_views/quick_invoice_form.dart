import 'package:flutter/material.dart';

import '../../../widgets/custom_button.dart';
import 'custom_title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
                child: CustomTitleTextField(
              title: 'Customer name',
              hint: 'Type customer name',
            )),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: CustomTitleTextField(
              title: 'Customer Email',
              hint: 'Customer Email',
            )),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(
                child: CustomTitleTextField(
              title: 'Item name',
              hint: 'Item name',
            )),
            SizedBox(width: 16),
            Expanded(
                child: CustomTitleTextField(
              title: 'Item mount',
              hint: 'USD',
            )),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                textButton: 'Add more details',
                textColor: Color(0xff4EB7F2),
                buttonColor: Colors.white,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomButton(
                textButton: 'Send Money',
                textColor: Colors.white,
                buttonColor: Color(0xff4EB7F2),
              ),
            ),
          ],
        )
      ],
    );
  }
}
