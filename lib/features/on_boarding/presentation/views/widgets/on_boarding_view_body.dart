import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/widgets/on_boarding_pages_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});
  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var curntPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      curntPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPagesView(pageController: pageController)),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: curntPage == 1
                ? AppColors.primaryColor
                : AppColors.primaryColor.withValues(alpha: .5),
          ),
        ),
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: curntPage == 1,
            child: CustomButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(LoginView.routeName);
              },
              text: 'ابدأ الان',
            ),
          ),
        ),
        SizedBox(height: 44),
      ],
    );
  }
}
