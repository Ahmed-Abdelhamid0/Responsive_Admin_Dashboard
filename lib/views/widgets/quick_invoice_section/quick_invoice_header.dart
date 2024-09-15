import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20,
        ),
        Expanded(child: SizedBox()),
        CircleAvatar(
          backgroundColor: Color(0xffFAFAFA),
          radius: 30,
          child: Icon(Icons.add,size: 18,color: Color(0xff4EB7F2),),
        ),
      ],
    );
  }
}
