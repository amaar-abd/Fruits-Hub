import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants.dart';
import 'package:fruits_hub/core/services/shared_prefrences_singleton.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:svg_flutter/svg.dart';

class SplachViewBody extends StatefulWidget {
  const SplachViewBody({super.key});

  @override
  State<SplachViewBody> createState() => _SplachViewBodyState();
}

class _SplachViewBodyState extends State<SplachViewBody> {
  @override
  void initState() {
    excuteNaveigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: AlignmentGeometry.topLeft,
            child: SvgPicture.asset(Assets.assetsImagesFreepik),
          ),
          SvgPicture.asset(Assets.assetsImagesLogo),
          SvgPicture.asset(Assets.assetsImagesCircles, fit: BoxFit.fill),
        ],
      ),
    );
  }

  void excuteNaveigation() {
    bool isOnBoardingiVewSeen = Prefs.getBool(kIsOnBoardingViewSeen) ?? false;
    Future.delayed(Duration(seconds: 3), () {
      if (isOnBoardingiVewSeen) {
        Navigator.pushReplacementNamed(context, LoginView.routeName);
      }
      Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
    });
  }
}
