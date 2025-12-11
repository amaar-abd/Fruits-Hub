import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/widgets/custom_page_view_item.dart';

class OnBoardingPagesView extends StatelessWidget {
  const OnBoardingPagesView({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        CustomPageViewItem(
          isvisible:
              (pageController.hasClients ? pageController.page!.round() : 0) ==
              0,
          backgroundimage: Assets.assetsImagesBackgroundImage1,
          image: Assets.assetsImagesImage1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('مرحبا بك في ', style: AppTextStyles.bold23),
              Text(
                'HUB',
                style: AppTextStyles.bold23.copyWith(
                  color: AppColors.srcondColor,
                ),
              ),
              Text(
                'Fruit',
                style: AppTextStyles.bold23.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
        ),
        CustomPageViewItem(
          isvisible:
              (pageController.hasClients ? pageController.page!.round() : 0) ==
              0,
          image: Assets.assetsImagesImage2,
          backgroundimage: Assets.assetsImagesBackgroundImage2,
          title: Text('ابحث و تسوق', style: AppTextStyles.bold23),
          subtitle:
              'نقدم لك افضل الفواكه المختارة بعناية . اطلع على التفاصيل و الصور و التقييمات للتأكد من اختيار الفاكهة المثالية',
        ),
      ],
    );
  }
}
