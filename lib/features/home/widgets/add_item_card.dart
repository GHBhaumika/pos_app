import 'package:flutter/material.dart';
import '../../../core/utils/app_colors.dart';

class AddItemCard extends StatelessWidget {
  const AddItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Navigate to Add Item Screen
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.primary, width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 18,
              backgroundColor: AppColors.primary,
              child: Icon(Icons.add, color: Colors.white,size: 30,),
            ),
            const SizedBox(height: 10),
            Text(
              "New Item",
              style:  TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.normal,
                color: AppColors.primary,
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}