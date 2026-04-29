import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
          color: AppColors.white
      ),
      title: const Text("Erosion",
      style: const TextStyle(
        fontFamily: 'Inter',
        fontSize: 20,
        color: AppColors.white,
      ),),
      backgroundColor: AppColors.primary,
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications,color: AppColors.white,),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}