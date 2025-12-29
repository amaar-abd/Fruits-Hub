import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:svg_flutter/svg_flutter.dart';

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFFFAFAFA),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 14),
          child: SizedBox(
            width: 20,

            child: Center(
              child: SvgPicture.asset(
                Assets.assetsImagesSearchNormal,
                height: 25,
              ),
            ),
          ),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(left: 14),
          child: SizedBox(
            width: 20,
            child: Center(
              child: SvgPicture.asset(Assets.assetsImagesFilterS, height: 25),
            ),
          ),
        ),
        hintText: 'ابحث عن.......',
        hintStyle: AppTextStyles.bodySmallRegular13.copyWith(
          color: Color(0xff949D9E),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
