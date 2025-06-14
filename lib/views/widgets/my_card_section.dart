import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';
import 'package:responsive_admin_dashboard/views/widgets/card_page_view.dart';
import 'package:responsive_admin_dashboard/views/widgets/dots_indicator.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {
        
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text('My card', style: AppStyles.styleSemiBold20),
        ),
        SizedBox(height: 20),
        CardPageView(pageController: pageController,),
        SizedBox(height: 20),
        DotsIndicator(currentPageIndex: currentPageIndex,),
      ],
    );
  }
}
