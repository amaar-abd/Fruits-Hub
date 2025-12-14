import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/dont_have_anaccount_widget.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/terms_and_conditions.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          children: [
            const SizedBox(height: 24),
            CustomTextFormField(
              hinttext: 'الاسم الكامل',
              textInputType: TextInputType.name,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              hinttext: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              hinttext: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              suffixicon: Icon(Icons.remove_red_eye, color: Color(0xffc9cecf)),
            ),
            const SizedBox(height: 16),
            TermsAndConditions(),
            const SizedBox(height: 30),
            CustomButton(onPressed: () {}, text: 'إنشاء حساب جديد'),
            const SizedBox(height: 26),
            DontHaveAnAccountWidget(),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
