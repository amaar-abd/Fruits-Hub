import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:svg_flutter/svg.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    super.key,
    required this.onpressed,
    // required this.icon,
    required this.title,
    required this.image,
  });
  final String image;
  final VoidCallback onpressed;
  // final Icon icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xffdcdede)),
            borderRadius: BorderRadiusGeometry.circular(16),
          ),
        ),
        onPressed: onpressed,
        child: ListTile(
          visualDensity: VisualDensity(vertical: VisualDensity.minimumDensity),
          title: Text(
            textAlign: TextAlign.center,
            title,
            style: AppTextStyles.bodyBasaSemibold16.copyWith(
              color: Colors.black,
            ),
          ),
          leading: SvgPicture.asset(image),
        ),
      ),
    );
  }
}
