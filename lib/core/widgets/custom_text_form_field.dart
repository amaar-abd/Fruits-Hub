import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hinttext,
    required this.textInputType,
    this.suffixicon,
    this.onSaved,
    this.obscureText = false,
  });
  final String hinttext;
  final TextInputType textInputType;
  final Widget? suffixicon;
  final void Function(String?)? onSaved;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      onSaved: onSaved,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'هذا الحقل مطلوب';
        } else {
          return null;
        }
      },
      keyboardType: textInputType,
      decoration: InputDecoration(
        suffixIcon: suffixicon,
        filled: true,
        fillColor: Color(0xfff9fafa),
        hint: Text(
          hinttext,
          style: AppTextStyles.bold13.copyWith(color: Color(0xff949d9e)),
        ),

        border: buildborder(),
        enabledBorder: buildborder(),
        focusedBorder: buildborder(),
      ),
    );
  }

  OutlineInputBorder buildborder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),

      borderSide: BorderSide(color: Color(0xffE6E9E9), width: 1),
    );
  }
}
