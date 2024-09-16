import 'package:admin_dashboard/utils/custome_text_field.dart';
import 'package:admin_dashboard/utils/title_text_field.dart';
import 'package:admin_dashboard/utils/custom_background_container.dart';
import 'package:admin_dashboard/views/widgets/quick_invoice_section/latest_transaction.dart';
import 'package:admin_dashboard/views/widgets/quick_invoice_section/quick_invoice_btns.dart';
import 'package:admin_dashboard/views/widgets/quick_invoice_section/quick_invoice_form.dart';
import 'package:admin_dashboard/views/widgets/quick_invoice_section/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickInvoiceHeader(),
            SizedBox(height: 24),
            LatestTransaction(),
            Divider(height: 48,color: Color(0xffF1F1F1),),
            QuickInvoiceForm(),
            SizedBox(height: 24),
            QuickInvoiceButtons(),

          ],
        ),
    );
  }
}
