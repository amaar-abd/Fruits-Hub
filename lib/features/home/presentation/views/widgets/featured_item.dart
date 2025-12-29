import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/custom_home_bottun.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    var widthphone = MediaQuery.of(context).size.width;
    return AspectRatio(
      aspectRatio: 342 / 158, //width : height
      child: Stack(
        children: [
          Positioned(
            // top: 0,
            left: 0,
            bottom: 0,
            right: widthphone * 0.4,
            child: Image.asset(
              Assets.assetsImagesWatermelonTest,
              // fit: BoxFit.cover,
            ),
          ),
          Container(
            width: widthphone / 2,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              image: DecorationImage(
                image: Svg(Assets.assetsImagesEllipse224),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25),
                  Text(
                    'عروض العيد',
                    style: AppTextStyles.bodySmallRegular13.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Spacer(),
                  Text(
                    'خصم 25% ',
                    style: AppTextStyles.bodyLargeBold19.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 11),
                  CustomHomeBottun(),
                  SizedBox(height: 29),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
