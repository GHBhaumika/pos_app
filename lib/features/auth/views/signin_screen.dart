import 'package:flutter/material.dart';
import 'package:pos_app/features/auth/views/signup_screen.dart';
import '../../../core/utils/app_colors.dart';
import '../../home/views/home_screen.dart';
import '../controllers/auth_controller.dart';
import '../widgets/custom_login_button.dart';
import '../widgets/custom_login_text_field.dart';
import '../widgets/logo_widget.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  //text editing controllers for email and password
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthController _authController = AuthController();
  bool isLoading = false;

  //dispose for email and password controllers
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
                  //app logo
                  const LogoWidget(),
                  const SizedBox(height: 40),
                  //email custom text field
                  CustomLoginTextField(
                    hintText: "Email",
                    controller: emailController,
                  ),
                  const SizedBox(height: 16),
                  //password custom text field
                  CustomLoginTextField(
                    hintText: "Password",
                    isPassword: true,
                    controller: passwordController,
                  ),
                  const SizedBox(height: 24),
                  //custom login button
                  CustomLoginButton(
                    text: "Login",
                    onPressed: () async {
                      if (isLoading) return;
                      //ensure email and password filled when click the login button
                      if (emailController.text.isEmpty || passwordController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Please enter email and password")),
                        );
                        return;
                      }
                      setState(() {
                        isLoading = true;
                      });
                      //auth controller sign in method
                      final result = await _authController.signIn(
                        emailController.text.trim(),
                        passwordController.text.trim(),
                      );
                      setState(() {
                        isLoading = false;
                      });
                      //home screen navigation when sign in successful
                      if (result == true) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                        //error message show when sign in not successful
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(result.toString())),
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      //navigation for signup screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignupScreen(),
                        ),
                      );
                    },
                    // Don't have an account? text
                    child: RichText(
                      text: TextSpan(
                        text: "Don't have an account? ",
                        style: TextStyle(
                          color: AppColors.textSecondary,
                          fontSize: 14,
                        ),
                        children: [
                          TextSpan(
                            text: "Sign Up",
                            style: TextStyle(
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
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