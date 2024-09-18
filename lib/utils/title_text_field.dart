import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/utils/custome_text_field.dart';
import 'package:flutter/material.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hintText,});
final String title , hintText;
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(height: 12),
         CustomTextField(hint: hintText),
      ],
    );
  }
}
