import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pos_app/core/utils/app_colors.dart';

class TopInfoBar extends StatelessWidget {
  final bool showBackButton;

  const TopInfoBar({
    super.key,
    this.showBackButton = false,
  });

  @override
  Widget build(BuildContext context) {
    String todayDate = DateFormat('dd MMM').format(DateTime.now());

    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
          )
        ],
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Back button (left)
          if (showBackButton)
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: const Icon(Icons.arrow_back,color: AppColors.primary,),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),

          // Center content
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.calendar_month_rounded, size: 20,color: AppColors.primary,),
              const SizedBox(width: 8),
              Text(
                "Today  $todayDate",
                style: const TextStyle(
                  fontFamily: 'Inter',
                  color: AppColors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,

                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}