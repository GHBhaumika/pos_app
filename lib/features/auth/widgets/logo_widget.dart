import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.point_of_sale,
          size: 80,
          color: AppColors.primary,
        ),
        const SizedBox(height: 10),
        Text(
          "POS System",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
      ],
    );
  }
}