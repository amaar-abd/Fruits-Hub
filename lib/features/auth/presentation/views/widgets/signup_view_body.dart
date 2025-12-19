import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/widgets/build_snakBar.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/core/widgets/password_field.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/have_account_widget.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/terms_and_conditions.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, userName, password;
  late bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(height: 24),
              CustomTextFormField(
                onSaved: (data) {
                  userName = data!;
                },
                hinttext: 'الاسم الكامل',
                textInputType: TextInputType.name,
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                onSaved: (data) {
                  email = data!;
                },
                hinttext: 'البريد الإلكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              PasswordField(
                onSaved: (data) {
                  password = data!;
                },
              ),
              const SizedBox(height: 16),
              TermsAndConditions(
                onchange: (value) {
                  isChecked = value;
                },
              ),
              const SizedBox(height: 30),
              CustomButton(
                onPressed: () {
                  if (formKey.currentState!
                      .validate()) //تحققل لكل الحقول حسب شو مكتوب بالفاليديتور
                  {
                    formKey.currentState!.save();
                    if (isChecked) {
                      context.read<SignupCubit>().signupUser(
                        email: email,
                        password: password,
                        name: userName,
                      );
                    } else {
                      buildsnakBar(context, 'يجب الموافقة على الشروط والأحكام');
                    }
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                text: 'إنشاء حساب جديد',
              ),
              const SizedBox(height: 26),
              HaveAnAccountWidget(),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
