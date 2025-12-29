import 'package:fruits_hub/core/utils/app_images.dart';

class BottomNavigatinBarEntity {
  final String activeItem, inActiveItem;
  final String name;

  BottomNavigatinBarEntity({
    required this.activeItem,
    required this.inActiveItem,
    required this.name,
  });

  static List<BottomNavigatinBarEntity> bottomBarItems = [
    BottomNavigatinBarEntity(
      activeItem: Assets.assetsImagesBoldHome,

      inActiveItem: Assets.assetsImagesOutlineHome,
      name: 'الرئيسية',
    ),
    BottomNavigatinBarEntity(
      activeItem: Assets.assetsImagesBoldElement3,

      inActiveItem: Assets.assetsImagesOutlineElement3,
      name: 'المنتجات',
    ),
    BottomNavigatinBarEntity(
      activeItem: Assets.assetsImagesBoldShoppingCart,

      inActiveItem: Assets.assetsImagesOutlineShoppingCart,
      name: 'سلة التسوق',
    ),
    BottomNavigatinBarEntity(
      activeItem: Assets.assetsImagesBoldUser,

      inActiveItem: Assets.assetsImagesOutlineUser,
      name: 'حسابي',
    ),
  ];
}
