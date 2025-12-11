import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/login_view_body.dart';
class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = 'AuthView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: LoginViewBody()));
  }
}
