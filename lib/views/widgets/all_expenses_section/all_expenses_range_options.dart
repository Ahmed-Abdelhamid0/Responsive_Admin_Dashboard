import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const  EdgeInsets.all(12),
      decoration: BoxDecoration(
       color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xffF1F1F1),
        )
      ),
      child:  Row(
        children: [
           Text(
            'Monthly',
            style: AppStyles.styleMedium16(context),
          ),
          const  SizedBox(width: 18),
          Transform.rotate(
            angle: -1.5708,
              child: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Color(0xFF064061),
                size: 20,),
          ),
        ],
      ),
    );
  }
}