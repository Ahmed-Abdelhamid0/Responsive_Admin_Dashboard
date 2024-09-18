import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
final String hint;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffFAFAFA),
        hintText: hint,
        hintStyle: AppStyles.styleRegular16(context).copyWith(
          color: const Color(0xffAAAAAA),
        ),
        border: buildBorder(),
        focusedBorder: buildBorder(),
        // enabledBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: Color(0xffAAAAAA),
        ),
      );
  }
}
