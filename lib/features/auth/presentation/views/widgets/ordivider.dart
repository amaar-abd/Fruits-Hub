import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class Ordivider extends StatelessWidget {
  const Ordivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider()),
        const SizedBox(width: 18),
        Text('أو', style: AppTextStyles.bodyBasaSemibold16),
        const SizedBox(width: 18),
        Expanded(child: Divider()),
      ],
    );
  }
}
