import 'package:flutter/material.dart';
import 'package:nubank_clone/core/theme/app_colors.dart';
import 'package:nubank_clone/core/theme/app_typography.dart';

// ignore: must_be_immutable
class CardFindOutModel extends StatelessWidget {
  String imagem;
  String title;
  String description;
  String button;
  CardFindOutModel({
    Key? key,
    required this.imagem,
    required this.title,
    required this.description,
    required this.button,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16, ),
      decoration: BoxDecoration(
          color: AppColors.greyColor,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Image.asset(imagem, fit: BoxFit.cover, width: 230),
          const SizedBox(height: 10),
          Text(title, style: AppTypography.bodyTitleBold(context)!.copyWith(fontSize: 14)),
          const SizedBox(height: 10),
          Text(description,),
          const SizedBox(height: 22),
          Container(
            margin: const EdgeInsets.only(left: 12),
            padding: const EdgeInsets.all(12),
            decoration:  BoxDecoration(color: AppColors.defaultColor, borderRadius: BorderRadius.circular(16)),
            child: Text(
              button,style: AppTypography.bodyText(context)!.copyWith(color: AppColors.white),
            ),
          )
        ],
      ),
    );
  }
}
