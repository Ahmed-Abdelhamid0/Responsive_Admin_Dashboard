import 'package:admin_dashboard/utils/app_assets.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420/215,
        child: Container(
          decoration: BoxDecoration(
            image: const DecorationImage(image: AssetImage(AppAssets.cardBackground)),
            color: const Color(0xff4eb7f2),
            borderRadius: BorderRadius.circular(12),
          ),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.only(top: 16,right: 45,left: 31),
                title: Text(
                  'Bank Name',
                  style: AppStyles.styleRegular16(context).copyWith(
                    color: const Color(0xffFFFFFF),
                  ),
                ),
                subtitle: Text(
                  'BANQUE MISR',
                  style: AppStyles.styleMedium16(context).copyWith(
                    color: const Color(0xffFFFFFF),
                  ),
                ),
                trailing: SvgPicture.asset(AppAssets.gallery),
              ),
              const  Expanded(child:  SizedBox()),
               Padding(
                 padding: const EdgeInsets.only(right: 24),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '0918 8124 0042 8129',
                      style: AppStyles.styleSemiBold24(context).copyWith(
                        color: const Color(0xffFFFFFF),
                      ),
                    ),
                    Text(
                      '12/20 - 124',
                      style: AppStyles.styleRegular16(context).copyWith(
                        color: const Color(0xffFFFFFF),
                      ),
                    ),
                  ],
              ),
               ),
              const Flexible(child: SizedBox(height: 26)),
            ],
          ),
        )
    );
  }
}
