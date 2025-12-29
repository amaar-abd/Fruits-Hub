import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class CustomHomeBottun extends StatelessWidget {
  const CustomHomeBottun({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: 116,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        onPressed: () {},
        child: Text(
          'تسوق الان',
          style: AppTextStyles.bold13.copyWith(color: AppColors.primaryColor),
        ),
      ),
    );
  }
}

    // return ElevatedButton(
    //   style: ElevatedButton.styleFrom(
    //     backgroundColor: Colors.white,
    //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    //     // padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    //   ),
    //   onPressed: () {},
    //   child: Text(
    //     'تسوق الان',
    //     style: AppTextStyles.bold13.copyWith(color: AppColors.primaryColor),
    //   ),
    // );