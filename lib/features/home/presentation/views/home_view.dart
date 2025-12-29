import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/home_view_bottom_navigation.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = 'HomeView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: HomeViewBottomNavigation(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: HomeViewBody()),
            HomeViewBottomNavigation(),
          ],
        ),
      ),
    );
  }
}
