import 'package:flutter/material.dart';
import '../../../core/utils/app_colors.dart';
import 'custom_form_text_field.dart';

class AddStockDialogDialog extends StatelessWidget {
  const AddStockDialogDialog({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
          "ADD STOCK",
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
        child: CustomFormTextField(
          label: "Stock Name",
          hint: "Ex: Coca Cola",
          controller: TextEditingController(),
        ),
      ),

    );
  }
}