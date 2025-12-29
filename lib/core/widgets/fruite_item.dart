import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class FruiteItem extends StatelessWidget {
  const FruiteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     
      decoration: ShapeDecoration(
        color: Color(0xfff3f5f7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border),
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                SizedBox(height: 20),
                Image.asset(Assets.assetsImagesWatermelonTest),
                SizedBox(height: 24),
                ListTile(
                  title: Text('بطيخ', style: AppTextStyles.bodyBasaSemibold16),
                  subtitle: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '20 جنيه',
                          style: AppTextStyles.bold13.copyWith(
                            color: AppColors.secondColor,
                          ),
                        ),
                        TextSpan(
                          text: ' / الكيلو',
                          style: AppTextStyles.bodySmallSemibold13.copyWith(
                            color: AppColors.lightSecondColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
