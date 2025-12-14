import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(10, 0),
      child: Row(
        children: [
          Checkbox(value: false, onChanged: (value) {}),
          SizedBox(
            width: MediaQuery.sizeOf(context).width - (14 * 2) - 48,
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'من خلال إنشاء حساب,',
                      style: AppTextStyles.bodySmallSemibold13.copyWith(
                        color: Color(0xff949e9d),
                      ),
                    ),
                    TextSpan(
                      text: 'فإنك توافق على ',
                      style: AppTextStyles.bodySmallSemibold13.copyWith(
                        color: Color(0xff949e9d),
                      ),
                    ),
                    TextSpan(
                      text: 'الشروط والأحكام الخاصة بنا',
                      style: AppTextStyles.bodySmallSemibold13.copyWith(
                        color: AppColors.lightPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
