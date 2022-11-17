import 'package:flutter/material.dart';
import 'package:nubank_clone/core/theme/app_colors.dart';
import 'package:nubank_clone/core/theme/app_typography.dart';

class SecurityLife extends StatelessWidget {
  const SecurityLife({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Seguros',
            style: AppTypography.bodyTitleBold(context),
          ),
          const SizedBox(height: 10,),
          const Text(
            'Protecção para você cuidar do que importa',
            style: TextStyle(color: AppColors.grey),
          ),
          const SizedBox(height: 10,),
          securityButton(context)
        ],
      ),
    );
  }

  securityButton(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.greyColor),
      margin: const EdgeInsets.only(bottom: 12, right: 16),
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child:Row(
              children: const [
                 Icon(
            Icons.favorite_border_outlined,
          ),
           SizedBox(width: 12,),
          Text(
            'Seguro de vida',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
              ],
            ) ,
          ),
          const Text('Conhecer' ,style: TextStyle(color: AppColors.defaultColor),)
        ],
      ),
    );
  }
}
