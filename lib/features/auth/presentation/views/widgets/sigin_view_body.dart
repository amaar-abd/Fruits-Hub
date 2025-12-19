import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/core/widgets/social_login_button.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/dont_have_anaccount_widget.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/ordivider.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          children: [
            const SizedBox(height: 24),
            const CustomTextFormField(
              hinttext: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            const CustomTextFormField(
              suffixicon: Icon(Icons.remove_red_eye, color: Color(0xffc9cecf)),
              hinttext: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'هل نسيت كلمة المرور ؟ ',
                  style: AppTextStyles.bodySmallSemibold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            CustomButton(onPressed: () {}, text: 'تسجيل الدخول'),
            const SizedBox(height: 32),
            const DontHaveAnAccountWidget(),
            const SizedBox(height: 30),
            const Ordivider(),
            SizedBox(height: 16),
            SocialLoginButton(
              onpressed: () {},
              image: Assets.assetsImagesGoogleIcon,
              title: 'تسجيل بواسطة جوجل ',
            ),
            SizedBox(height: 16),
            SocialLoginButton(
              onpressed: () {},
              image: Assets.assetsImagesApplIcon,
              title: 'تسجيل بواسطة أبل ',
            ),
            SizedBox(height: 16),
            SocialLoginButton(
              onpressed: () {},
              image: Assets.assetsImagesFacebookIcon,
              title: 'تسجيل بواسطة فيسبوك ',
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
