import 'package:flutter/material.dart';
import 'package:nubank_clone/core/theme/app_colors.dart';

class Notifications extends StatelessWidget {
  const Notifications({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          income(),
          income2(),
          income3(),
          income4()
        ],
      )
    );
  }

  income(){
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(24),
      decoration:  BoxDecoration(
        color: AppColors.greyColor,
        borderRadius: BorderRadius.circular(16)
      ),
      child: RichText(text: const TextSpan(children: [
         TextSpan(text: 'Seu ', style: TextStyle(color: AppColors.black)),
         TextSpan(text: 'informe de\n  rendimentos ', style: TextStyle(color: AppColors.defaultColor, fontSize: 16),),
         TextSpan(text: '2022 já está...', style: TextStyle(color: AppColors.black)),
      ])),
    );
  }

   income2(){
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(24),
      decoration:  BoxDecoration(
        color: AppColors.greyColor,
        borderRadius: BorderRadius.circular(16)
      ),
      child: RichText(text: const TextSpan(children: [
         TextSpan(text: 'Chegou o\n ', style: TextStyle(color: AppColors.black)),
         TextSpan(text: 'débito automático da fatura do...', style: TextStyle(color: AppColors.defaultColor, fontSize: 16),),
      ])),
    );
  }

 

  income3(){
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(24),
      decoration:  BoxDecoration(
        color: AppColors.greyColor,
        borderRadius: BorderRadius.circular(16)
      ),
      child: RichText(text: const TextSpan(children: [
         TextSpan(text: 'Conheça ',style: TextStyle(color: AppColors.black)),
         TextSpan(text: 'Nubank Vida', style: TextStyle(color: AppColors.defaultColor, fontSize: 16),),
         TextSpan(text: ' um \n  seguro simples e que cab...', style: TextStyle(color: AppColors.black)),
      ])),
    );
  }
}

 income4(){
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(24),
      decoration:  BoxDecoration(
        color: AppColors.greyColor,
        borderRadius: BorderRadius.circular(16)
      ),
      child: RichText(text: const TextSpan(children: [
         TextSpan(text: 'Salve seus amigos da \n burocracia ', style: TextStyle(color: AppColors.black)),
         TextSpan(text: 'Faça um...', style: TextStyle(color: AppColors.defaultColor, fontSize: 16),),
      ])),
    );
  }