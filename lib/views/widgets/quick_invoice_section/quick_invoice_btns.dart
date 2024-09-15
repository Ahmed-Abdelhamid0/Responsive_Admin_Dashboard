import 'package:admin_dashboard/utils/custom_button.dart';
import 'package:flutter/material.dart';

class QuickInvoiceButtons extends StatelessWidget {
  const QuickInvoiceButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomButton(btnTxt: 'Add more details', btnColor: Colors.white, txtColor: Color(0xff4EB7F2))),
        SizedBox(width: 24),
        Expanded(child: CustomButton(btnTxt: 'Send Money', btnColor: Color(0xff4EB7F2), txtColor: Colors.white)),
      ],
    );
  }
}
