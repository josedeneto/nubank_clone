import 'package:flutter/material.dart';
import 'package:nubank_clone/core/theme/app_colors.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          iconcreditcard(),
          textCreditCard(),
          _invoice(),
          _limitDisponible(),
          _installments(),
        ],
      ),
    );
  }

  iconcreditcard(){
    return const Icon(Icons.credit_card_outlined);
  }

  textCreditCard(){
    return Padding(
      padding: const EdgeInsets.only(top:12, bottom:5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Cartão de Crédito', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 20),),
          Icon(Icons.arrow_forward_ios_outlined, size: 14,)
        ],
      ),
    );
  }

  _invoice(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
       Text('Fatura atual', style: TextStyle(color: AppColors.grey),),
        SizedBox(height: 14,),
        Text('R\$ 4,343,30', style:  TextStyle( fontWeight: FontWeight.bold, fontSize: 22),),
         SizedBox(height:5)
      ],
    );
  }
_limitDisponible(){
 return const Text('Limite disponível de R\$4000,00', style: TextStyle(color: AppColors.grey),);
}

_installments(){
  return GestureDetector(
    onTap: (){},
    child: Container(
      margin: const EdgeInsets.only(top: 4, bottom: 16),
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
      decoration: BoxDecoration(color: AppColors.greyColor, 
      borderRadius: BorderRadius.circular(12)
      ),
      child: const Text('Parcelar compras', style: TextStyle(fontWeight: FontWeight.bold),),
    ),
  );
}
}