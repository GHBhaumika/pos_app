import 'package:flutter/material.dart';
import '../../../core/utils/app_colors.dart';
import 'custom_form_dropdown.dart';
import 'custom_form_text_field.dart';

class AddItemDialog extends StatefulWidget {
  const AddItemDialog({super.key});

  @override
  State<AddItemDialog> createState() => _AddItemDialogState();
}

class _AddItemDialogState extends State<AddItemDialog> {

  final TextEditingController nameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();

  String? selectedCategory;

  final List<String> categories = [
    "Beverages",
    "Groceries",
    "Snacks"
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,

        leading: IconButton(
          icon: const Icon(Icons.close,color: AppColors.primary),
          onPressed: (){
            Navigator.pop(context);
          },
        ),

        title: const Text(
          "ADD ITEM",
          style: TextStyle(
            color: AppColors.primary,
            fontFamily: "Inter",
            fontWeight: FontWeight.w600,
          ),
        ),

        actions: [

          IconButton(
            onPressed: (){},
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.green,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right:12),
            child: ElevatedButton(

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),

              onPressed: (){

              },

              child: const Text(
                "SAVE",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Inter",
                ),
              ),

            ),
          )

        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              CustomFormTextField(
                label: "Item Name",
                hint: "Ex: Apple",
                controller: nameController,
              ),

              const SizedBox(height: 20),
              CustomFormDropdown(
                label: "Category",
                hint: "Ex: Beverages",
                value: selectedCategory,
                items: categories,
                onChanged: (value) {
                  setState(() {
                    selectedCategory = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              CustomFormTextField(
                label: "Selling Price",
                hint: "Ex: 250.00",
                keyboardType: TextInputType.number,
                controller: priceController,
              ),

            ],
          ),
        ),
      ),

    );
  }
}