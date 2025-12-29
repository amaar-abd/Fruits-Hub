import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/grid_view_item.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/custom_home_appBar.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/doc_home.dart';

import 'package:fruits_hub/features/home/presentation/views/widgets/featured_list.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/search_textfield.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 16),
                CustomHomeAppbar(),
                SizedBox(height: 12),
                SearchTextfield(),
                SizedBox(height: 12),
                FeaturedList(),
                SizedBox(height: 12),
                DocHome(),
                SizedBox(height: 8),
              ],
            ),
          ),
          GridViewItem(),
        ],
      ),
    );
  }
}
