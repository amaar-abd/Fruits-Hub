import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/fruite_item.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,

        mainAxisSpacing: 8,
        crossAxisSpacing: 16,
        childAspectRatio: 162 / 214,
      ),
      itemBuilder: (context, index) {
        return FruiteItem();
      },
    );
  }
}
