import 'package:flutter/material.dart';
import 'package:pos_app/features/home/widgets/add_stock_dialog.dart';
import '../widgets/action_card.dart';
import '../widgets/add_category_dialog.dart';
import '../widgets/add_item_dialog.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(

      padding: const EdgeInsets.all(12),

      child: GridView.count(

        crossAxisCount: 2,

        crossAxisSpacing: 12,

        mainAxisSpacing: 12,

        children: [

          ActionCard(

            title: "Add Item",

            icon: Icons.inventory_2_outlined,

            onTap: (){

              Navigator.push(
                context,
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (_) => const AddItemDialog(),
                ),
              );

            },

          ),

          ActionCard(

            title: "Add Category",

            icon: Icons.category_outlined,

            onTap: (){

              Navigator.push(
                context,
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (_) => const AddCategoryDialog(),
                ),
              );

            },

          ),
          ActionCard(

            title: "Add Stock",

            icon: Icons.add_shopping_cart,

            onTap: (){

              Navigator.push(
                context,
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (_) => const AddStockDialogDialog(),
                ),
              );

            },

          ),


        ],

      ),

    );

  }
}