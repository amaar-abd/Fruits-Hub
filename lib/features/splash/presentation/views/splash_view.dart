import 'package:flutter/material.dart';
import 'package:fruits_hub/features/splash/presentation/views/widgets/splach_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const routeNmae = 'splach';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SplachViewBody());
  }
}
