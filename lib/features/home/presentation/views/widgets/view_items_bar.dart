
import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/domain/bottom_navigatin_bar_entity.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/active_item.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/in_active_item.dart';

class ViewItemBar extends StatelessWidget {
  const ViewItemBar({
    super.key,
    required this.isActive,
    required this.bottomNavigatinBarEntity,
  });
  final bool isActive;
  final BottomNavigatinBarEntity bottomNavigatinBarEntity;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveItem(image: bottomNavigatinBarEntity.activeItem)
        : InActiveItem(image: bottomNavigatinBarEntity.inActiveItem);
  }
}