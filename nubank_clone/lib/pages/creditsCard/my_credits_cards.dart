import 'package:flutter/material.dart';
import 'package:nubank_clone/core/theme/app_colors.dart';

class MyCredistCard extends StatefulWidget {
  const MyCredistCard({ Key? key }) : super(key: key);

  @override
  State<MyCredistCard> createState() => _MyCredistCardState();
}

class _MyCredistCardState extends State<MyCredistCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.fromLTRB( 16, 10, 20,  10),
      decoration: BoxDecoration(color: AppColors.greyColor, borderRadius: BorderRadius.circular(16)),
      child: Row(
        children:const  [
          Icon(Icons.credit_card_outlined, color: AppColors.black,),
          SizedBox(width: 12,),
          Text('Meus cartões', style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}