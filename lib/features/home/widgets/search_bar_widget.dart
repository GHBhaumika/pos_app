import 'package:flutter/material.dart';
import 'package:pos_app/core/utils/app_colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search Item",
              hintStyle: const TextStyle(
                fontFamily: 'Inter',
                fontSize: 15,
                color: AppColors.grey,
              ),
              prefixIcon: const Icon(Icons.search,
                color: AppColors.grey,
              ),
              filled: true,
              fillColor: AppColors.boxFill,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: AppColors.grey, width: 0.5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: AppColors.primary, width: 1.5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}