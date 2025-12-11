import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants.dart';
import 'package:fruits_hub/core/services/shared_prefrences_singleton.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/auth/presentation/views/login_view.dart';
import 'package:svg_flutter/svg.dart';

class CustomPageViewItem extends StatelessWidget {
  const CustomPageViewItem({
    super.key,
    required this.image,
    required this.backgroundimage,
    required this.title,
    required this.subtitle,
    required this.isvisible,
  });
  final String image, backgroundimage;
  final Widget title;
  final String subtitle;
  final bool isvisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(backgroundimage, fit: BoxFit.fill),
              ),

              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(image),
              ),
              Positioned(
                right: 16,
                top: 24,
                child: Visibility(
                  visible: isvisible,
                  child: GestureDetector(
                    onTap: () {
                      Prefs.setBool(kIsOnBoardingViewSeen, true);
                      Navigator.of(
                        context,
                      ).pushReplacementNamed(LoginView.routeName);
                    },
                    child: Text(
                      'تخط',
                      style: AppTextStyles.bodySmallRegular13.copyWith(
                        color: Color(0xff949D9E),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 64),
        title,
        SizedBox(height: 24),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: AppTextStyles.bodySmallSemibold13.copyWith(
              color: Color(0xff4E5456),
            ),
          ),
        ),
      ],
    );
  }
}
