import 'package:flutter/material.dart';
import '../widgets/add_item_card.dart';
import '../widgets/item_card.dart';
import '../widgets/search_bar_widget.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //hardcoded items for card implementation
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

          //items grid
          Expanded(
            child: GridView.builder(
              //add item card set up
              itemCount: items.length + 1,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //grid settings
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.9,
              ),
              itemBuilder: (context, index) {
                //add item card
                if (index == 0) {
                  return const AddItemCard();
                }
                final item = items[index - 1];
                //item card
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