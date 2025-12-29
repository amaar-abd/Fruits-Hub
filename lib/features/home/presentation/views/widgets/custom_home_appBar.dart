import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:svg_flutter/svg.dart';

class CustomHomeAppbar extends StatelessWidget {
  const CustomHomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(Assets.assetsImagesMaskGroup),
      title: Text(
        ' صباح الخير !...',
        style: AppTextStyles.bodyBasaRegular16.copyWith(
          color: const Color(0xFF949D9E),
        ),
      ),
      subtitle: Text(
        'أحمد الخالدي',
        style: AppTextStyles.bold16.copyWith(color: const Color(0xFF263238)),
      ),
      trailing: SvgPicture.asset(Assets.assetsImagesNotif),
    );
  }
}
