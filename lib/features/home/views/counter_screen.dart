import 'package:flutter/material.dart';
import '../widgets/new_sale_card.dart';
import '../widgets/search_bar_widget.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: const [
          //search bar
          SearchBarWidget(),
          SizedBox(height: 16),
          //new sale card widget
          NewSaleCard(),
        ],
      ),
    );
  }
}