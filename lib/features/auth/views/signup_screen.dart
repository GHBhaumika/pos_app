import 'package:flutter/material.dart';
import '../../../core/utils/app_colors.dart';
import '../../home/views/home_screen.dart';
import '../controllers/auth_controller.dart';
import '../widgets/custom_login_button.dart';
import '../widgets/custom_login_text_field.dart';
import '../widgets/logo_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  //text controllers for username, email, password
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  //auth controller initialization
  final AuthController _authController = AuthController();

  //dispose for username , email, password
  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      // appBar: AppBar(
      //   backgroundColor: AppColors.background,
      //   elevation: 0,
      //   iconTheme: const IconThemeData(color: Colors.black),
      // ),
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
                  const SizedBox(height: 30),
                  //username text field
                  CustomLoginTextField(
                    hintText: "Username",
                    controller: usernameController,
                  ),
                  const SizedBox(height: 16),
                  //email text field
                  CustomLoginTextField(
                    hintText: "Email",
                    controller: emailController,
                  ),
                  const SizedBox(height: 16),
                  //password text field
                  CustomLoginTextField(
                    hintText: "Password",
                    isPassword: true,
                    controller: passwordController,
                  ),
                  const SizedBox(height: 16),
                  //confirm password text field
                  CustomLoginTextField(
                    hintText: "Confirm Password",
                    isPassword: true,
                    controller: confirmPasswordController,
                  ),
                  const SizedBox(height: 24),
                  //sign up button
                  CustomLoginButton(
                    text: "Sign Up",
                    onPressed: () async {
                      //passwords validation
                      if (passwordController.text != confirmPasswordController.text) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Passwords do not match")),
                        );
                        return;
                      }
                      //signup method
                      final result = await _authController.signUp(
                        emailController.text.trim(),
                        passwordController.text.trim(),
                      );
                      //navigate to the home screen when signup successful
                      if (result == true) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                        //show error message when signup not successful
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(result.toString())),
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  //sign in page navigation
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    //Already have an account? text
                    child: RichText(
                      text: TextSpan(
                        text: "Already have an account? ",
                        style: TextStyle(
                          color: AppColors.textSecondary,
                          fontSize: 14,
                        ),
                        children: [
                          TextSpan(
                            text: "Login",
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