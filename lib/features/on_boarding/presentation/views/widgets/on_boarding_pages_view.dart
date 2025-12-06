import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/widgets/custom_page_view_item.dart';

class OnBoardingPagesView extends StatelessWidget {
  const OnBoardingPagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        CustomPageViewItem(
          backgroundimage: Assets.assetsImagesBackgroundImage1,
          image: Assets.assetsImagesImage1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('مرحبا بك في '), Text('HUB'), Text('Fruit')],
          ),
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
        ),
        CustomPageViewItem(
          image: Assets.assetsImagesImage2,
          backgroundimage: Assets.assetsImagesBackgroundImage2,
          title: Text(
            'ابحث و تسوق',
            style: TextStyle(fontSize: 23, color: Color(0xFF0C0D0D)),
          ),
          subtitle:
              'نقدم لك افضل الفواكه المختارة بعناية . اطلع على التفاصيل و الصور و التقييمات للتأكد من اختيار الفاكهة المثالية',
        ),
      ],
    );
  }
}
