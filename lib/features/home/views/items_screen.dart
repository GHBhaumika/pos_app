import 'package:flutter/material.dart';
import '../widgets/add_item_card.dart';
import '../widgets/item_card.dart';
import '../widgets/search_bar_widget.dart';
import '../../../core/utils/app_colors.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 🔹 Hardcoded items (for now)
    final List<Map<String, dynamic>> items = [
      {"name": "Rice", "price": "Rs. 220"},
      {"name": "Sugar", "price": "Rs. 180"},
      {"name": "Milk", "price": "Rs. 120"},
      {"name": "Tea", "price": "Rs. 90"},
      {"name": "Soap", "price": "Rs. 75"},
    ];

    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          const SearchBarWidget(),
          const SizedBox(height: 16),

          /// 🔥 Grid starts here
          Expanded(
            child: GridView.builder(
              itemCount: items.length + 1, // +1 for Add Item card
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // 3 per row
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.9,
              ),
              itemBuilder: (context, index) {
                // 👉 First card = Add Item
                if (index == 0) {
                  return const AddItemCard();
                }

                final item = items[index - 1];

                return ItemCard(
                  name: item["name"],
                  price: item["price"],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}