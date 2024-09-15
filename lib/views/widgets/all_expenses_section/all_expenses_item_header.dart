import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image, this.imageBackground, this.imageColor});
final String image;
final Color ? imageBackground,imageColor;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
       CircleAvatar(
          radius: 30,
         backgroundColor: imageBackground ?? const Color(0xffFAFAFA),
         child: SvgPicture.asset(image,colorFilter: ColorFilter.mode(imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),),
       ),
       const  Expanded(child: SizedBox()),
         Icon(
          Icons.arrow_forward_ios_rounded,
          color: imageColor == null ? const  Color(0xFF064061) : Colors.white,
          size: 20,),
      ],
    );
  }
}
