import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';

class NewSaleCard extends StatelessWidget {
  const NewSaleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        height: 150,
        width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircleAvatar(
              radius: 24,
              backgroundColor: AppColors.primary,
              child: Icon(Icons.add, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              "NEW SALE",
              style: const TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}