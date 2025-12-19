import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';

void buildsnakBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(backgroundColor: AppColors.primaryColor, content: Text(message)),
  );
}
