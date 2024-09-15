import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.btnTxt,
      required this.btnColor,
      required this.txtColor});

  final String btnTxt;
  final Color btnColor, txtColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          primary: btnColor,
        ),
        onPressed: () {},
        child: Text(
          btnTxt,
          style: AppStyles.styleSemiBold18.copyWith(
            color: txtColor,
          ),
        ),
      ),
    );
  }
}
