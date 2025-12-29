import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class DocHome extends StatelessWidget {
  const DocHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('الأكثر مبيعا', style: AppTextStyles.bold16),
        Spacer(),
        Text(
          'المزيد',
          style: AppTextStyles.bodySmallRegular13.copyWith(
            color: Color(0xff949D9E),
          ),
        ),
      ],
    );
  }
}
