import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/buildappbar.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const routename = 'SignupView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, titlle: 'حساب جديد '),
      body: SafeArea(child: SignupViewBody()),
    );
  }
}
