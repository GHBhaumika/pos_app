import 'package:flutter/material.dart';
import '../widgets/top_info_bar.dart';

class TodayScreen extends StatelessWidget {
  const TodayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
      SizedBox(height: 16),
      //top white bar
      TopInfoBar(showBackButton: true),
      //other components
      Expanded(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              // Your report content here
            ],
          ),
        ),
      ),
        ],
      );

  }
}