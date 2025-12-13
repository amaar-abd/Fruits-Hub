import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

AppBar buildAppBar(BuildContext context, {required String titlle}) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(titlle, style: AppTextStyles.bodyLargeBold19),
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Icon(Icons.arrow_back_ios_new),
      ),
    );
  }