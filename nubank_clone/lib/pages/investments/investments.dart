
import 'package:flutter/material.dart';
import 'package:nubank_clone/core/theme/app_colors.dart';


class Investments extends StatelessWidget {
  const Investments({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _textInvestmentsChevron(),
          investmentsValue(),
          consultValue()
        ],
      ),
    );
  }

  _textInvestmentsChevron(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  const [
        Text('Investimentos', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        Icon(Icons.arrow_forward_ios_outlined),
      ],
    );
  }
  investmentsValue(){
    return  const Padding(
      padding:  EdgeInsets.only(top: 16.0),
      child: Text('O jeito Nu de investir sem asteriscos, \n linguagem fácil a partir de R\$1. Saiba mais.', style: TextStyle(color: AppColors.grey),),
    );
  }

  consultValue(){
    return Container(
      margin: const EdgeInsets.only(top: 12, bottom: 12),
      decoration:  BoxDecoration(
        color: AppColors.greyColor, borderRadius: BorderRadius.circular(15)
      ),
      padding: const EdgeInsets.all(18),
      child: Row(
        children: [
          const Icon(Icons.money),
          Container(margin:const EdgeInsets.symmetric(horizontal: 10),
          child: const Text('Consultar saldo para transferência', style: TextStyle(fontWeight: FontWeight.bold),),)
        ],
      ),
    );
  }
}