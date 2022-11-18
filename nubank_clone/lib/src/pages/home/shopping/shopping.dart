import 'package:flutter/material.dart';
import 'package:nubank_clone/core/theme/app_colors.dart';


class ShoppingView extends StatelessWidget {
  const ShoppingView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          shoppingTitleChevron(),
          const SizedBox(height:10),
           const Text('Vantagens exclusivas das nossas marcas \n preferidas', style:  TextStyle(color: AppColors.grey),)
        ],
      ),
    );
  }

 shoppingTitleChevron(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: const  [
      Text('Shoppings', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
      Icon(Icons.arrow_forward_ios_outlined, size:14)
    ],
  );
 } 

}