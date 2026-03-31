import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../widgets/custom_login_button.dart';
import '../widgets/custom_login_text_field.dart';
import '../widgets/logo_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const LogoWidget(),
                  const SizedBox(height: 30),

                  CustomLoginTextField(
                    hintText: "Username",
                    controller: usernameController,
                  ),
                  const SizedBox(height: 16),

                  CustomLoginTextField(
                    hintText: "Email",
                    controller: emailController,
                  ),
                  const SizedBox(height: 16),

                  CustomLoginTextField(
                    hintText: "Password",
                    isPassword: true,
                    controller: passwordController,
                  ),
                  const SizedBox(height: 16),

                  CustomLoginTextField(
                    hintText: "Confirm Password",
                    isPassword: true,
                    controller: confirmPasswordController,
                  ),
                  const SizedBox(height: 24),

                  CustomLoginButton(
                    text: "Sign Up",
                    onPressed: () {
                      // TODO: Add signup logic
                    },
                  ),

                  const SizedBox(height: 20),

                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Already have an account? Login",
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