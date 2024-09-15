import 'package:admin_dashboard/utils/title_text_field.dart';
import 'package:flutter/material.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(

      children: [
        Row(
          children: [
            Expanded(child: TitleTextField(title: 'Customer name', hintText: 'Type customer name')),
            SizedBox(width: 16),
            Expanded(child: TitleTextField(title: 'Customer Email', hintText: 'Type customer email')),

          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(child: TitleTextField(title: 'Item name', hintText: 'Type customer name')),
            SizedBox(width: 16),
            Expanded(child: TitleTextField(title: 'Item mount', hintText: 'USD')),

          ],
        ),
      ],
    );
  }
}
