import 'package:flutter/material.dart';
import 'package:pos_app/features/auth/views/signup_screen.dart';

import '../../../core/utils/app_colors.dart';
import '../widgets/custom_login_button.dart';
import '../widgets/custom_login_text_field.dart';
import '../widgets/logo_widget.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const LogoWidget(),
                  const SizedBox(height: 40),

                  CustomLoginTextField(
                    hintText: "Username",
                    controller: usernameController,
                  ),
                  const SizedBox(height: 16),

                  CustomLoginTextField(
                    hintText: "Password",
                    isPassword: true,
                    controller: passwordController,
                  ),
                  const SizedBox(height: 24),

                  CustomLoginButton(
                    text: "Login",
                    onPressed: () {
                      // TODO: Add login logic
                    },
                  ),

                  const SizedBox(height: 20),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignupScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Don't have an account? Sign Up",
                      style: TextStyle(
                        color: AppColors.textSecondary,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}