import 'package:flutter/material.dart';
import 'package:pos_app/core/utils/app_colors.dart';

class HomeBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const HomeBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //bottom bar styles
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.white,
      elevation: 10,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.primary,
      selectedLabelStyle: const TextStyle(
        fontFamily: 'Inter',
        fontWeight: FontWeight.w600,
        fontSize: 14,
      ),
      unselectedLabelStyle: const TextStyle(
        fontFamily: 'Inter',
        fontSize: 13,
      ),
      //bottom bar item list
      items: [
        _buildItem(Icons.bar_chart, "Reports", 0),
        _buildItem(Icons.today, "Today", 1),
        _buildItem(Icons.point_of_sale, "Counter", 2),
        _buildItem(Icons.list, "Items", 3),
        _buildItem(Icons.grid_view, "More", 4),
      ],
    );
  }

  //bottom bar build item custom widget
  BottomNavigationBarItem _buildItem(IconData icon, String label, int index) {
    final bool isSelected = currentIndex == index;
    return BottomNavigationBarItem(
      //itm label
      label: label,
      icon: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : AppColors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        //item icon
        child: Icon(
          icon,
          size: 30,
          color: isSelected ? Colors.white : AppColors.primary,
        ),
      ),
    );
  }

}