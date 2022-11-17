import 'package:flutter/material.dart';
import 'package:nubank_clone/core/theme/app_typography.dart';

import 'model/card_model.dart';

class FindOutMore extends StatefulWidget {
  const FindOutMore({ Key? key }) : super(key: key);

  @override
  State<FindOutMore> createState() => _FindOutMoreState();
}

class _FindOutMoreState extends State<FindOutMore> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Descubra mais', style: AppTypography.bodyTitleBold(context),),
          const SizedBox(height: 12,),
          findOutMoreCards()
        ],
      ),
    );
  }

  findOutMoreCards(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CardFindOutModel(imagem: 'assets/images/1.jpg',title: 'Conhecer',description: 'Sua liberdade financeira \n começa com você',button: 'Investir no app',),
            const SizedBox(width: 20),
          CardFindOutModel(imagem: 'assets/images/2.jpg',title: 'Conhecer',description: 'Sua liberdade financeira \n começa com você',button: 'Investir no app',),
            const SizedBox(width: 20),
          CardFindOutModel(imagem: 'assets/images/3.jpg',title: 'Conhecer',description: 'Sua liberdade financeira \n começa com você',button: 'Investir no app',),
        ],
      ),
    );
  }
}