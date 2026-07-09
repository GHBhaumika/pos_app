import 'package:flutter/material.dart';

import 'action_card.dart';
import 'add_item_dialog.dart';

class AddItemCard extends StatelessWidget {
  const AddItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ActionCard(
      title: "Add Item",
      icon: Icons.add_box_outlined,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            fullscreenDialog: true,
            builder: (_) => const AddItemDialog(),
          ),
        );
      },
    );
  }
}