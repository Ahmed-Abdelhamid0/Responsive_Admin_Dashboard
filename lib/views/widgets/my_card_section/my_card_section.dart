import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/views/widgets/my_card_section/dot_ind.dart';
import 'package:admin_dashboard/views/widgets/my_card_section/my_card_page_view.dart';
import 'package:flutter/material.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex=0;

  @override
  void initState() {
    pageController=PageController();
    pageController.addListener(() {
      currentPageIndex=pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          'My Card',
          style: AppStyles.styleSemiBold20(context),
            ),
        const SizedBox(height: 20),
        MyCardPageView(
          pageController: pageController,
        ),
        const SizedBox(height: 19),
         DotIndicator(
          currentPageIndex: currentPageIndex,
        ),
      ],
    );
  }
}
