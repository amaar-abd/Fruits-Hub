import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/core/widgets/password_field.dart';
import 'package:fruits_hub/core/widgets/social_login_button.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/dont_have_anaccount_widget.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/ordivider.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14),
        child: Form(
          key: formkey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(height: 24),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hinttext: 'البريد الإلكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              PasswordField(
                onSaved: (value) {
                  {
                    password = value!;
                  }
                },
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'هل نسيت كلمة المرور ؟ ',
                    style: AppTextStyles.bodySmallSemibold13.copyWith(
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              CustomButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    context.read<SigninCubit>().signInUser(
                      email: email,
                      password: password,
                    );
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                text: 'تسجيل الدخول',
              ),
              const SizedBox(height: 32),
              const DontHaveAnAccountWidget(),
              const SizedBox(height: 30),
              const Ordivider(),
              SizedBox(height: 16),
              SocialLoginButton(
                onpressed: () {
                  context.read<SigninCubit>().signInWithGoogle();
                },
                image: Assets.assetsImagesGoogleIcon,
                title: 'تسجيل بواسطة جوجل ',
              ),
              SizedBox(height: 16),
              SocialLoginButton(
                onpressed: () {},
                image: Assets.assetsImagesApplIcon,
                title: 'تسجيل بواسطة أبل ',
              ),
              SizedBox(height: 16),
              SocialLoginButton(
                onpressed: () {
                  context.read<SigninCubit>().signInWithFacebook();
                },
                image: Assets.assetsImagesFacebookIcon,
                title: 'تسجيل بواسطة فيسبوك ',
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
