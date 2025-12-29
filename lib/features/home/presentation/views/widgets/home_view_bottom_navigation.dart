import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/domain/bottom_navigatin_bar_entity.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/view_items_bar.dart';

class HomeViewBottomNavigation extends StatelessWidget {
  const HomeViewBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 375,
      decoration: ShapeDecoration(
        color: Colors.white,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 7,
            spreadRadius: 0,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: BottomNavigatinBarEntity.bottomBarItems.map((e) {
          return ViewItemBar(isActive: false, bottomNavigatinBarEntity: e);
        }).toList(),
      ),
    );
  }
}
