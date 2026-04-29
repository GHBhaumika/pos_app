import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color:AppColors.primary ),
            child: const Text("POS App", style: TextStyle(color: Colors.white)),
          ),
          const ListTile(
            leading: Icon(Icons.store),
            title: Text("My Shop"),
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
        ],
      ),
    );
  }
}