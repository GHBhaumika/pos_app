import 'package:flutter/material.dart';
import '../../../core/utils/app_colors.dart';
import '../../auth/controllers/auth_controller.dart';
import '../../auth/views/signin_screen.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController _authController = AuthController();

    return Drawer(
      child: Column(
        children: [
          //drawer header
          DrawerHeader(
            decoration: BoxDecoration(
              color: AppColors.primary,
            ),
            child: const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "POS App",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Inter',
                ),
              ),
            ),
          ),

          //menu items
          Expanded(
            child: ListView(
              children: [
                _buildTile(
                  icon: Icons.store,
                  title: "My Shop",
                  onTap: () {},
                ),
                _buildTile(
                  icon: Icons.settings,
                  title: "Settings",
                  onTap: () {},
                ),
              ],
            ),
          ),
          //divider
          const Divider(),
          //logout button
          _buildTile(
            icon: Icons.logout,
            title: "Logout",
            onTap: () async {
              await _authController.signOut();
              //navigate to sign in after log out
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => const SigninScreen()),
                    (route) => false,
              );
            },
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  // reusable listTile
  Widget _buildTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: AppColors.primary,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'Inter',
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColors.primary,
        ),
      ),
      onTap: onTap,
    );
  }
}