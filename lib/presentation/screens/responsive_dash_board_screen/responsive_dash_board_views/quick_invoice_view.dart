import 'package:flutter/material.dart';
import 'package:responsive_dash_board/presentation/widgets/custom_container_widget.dart';
import 'package:responsive_dash_board/presentation/widgets/custom_text_field_widget.dart';

import 'custom_title_text_field.dart';
import 'quick_invoice_form.dart';
import 'quick_invoice_header.dart';
import 'quick_invoice_latest_transaction.dart';

class QuickInvoiceView extends StatelessWidget {
  const QuickInvoiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainerWidget(
      margin: EdgeInsets.only(bottom: 20,left: 20,right: 20),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 12,),
          LatestTransaction(),
          SizedBox(height: 12,),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}




