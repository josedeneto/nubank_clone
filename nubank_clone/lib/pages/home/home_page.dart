import 'package:flutter/material.dart';
import 'package:nubank_clone/core/theme/app_colors.dart';
import 'package:nubank_clone/pages/creditsCard/credit_card.dart';
import 'package:nubank_clone/pages/home/home_component/header_component.dart';

import '../account/account.dart';
import '../actions/menu_items.dart';
import '../creditsCard/my_credits_cards.dart';
import '../find_out_more/find_out_more.dart';
import '../investments/investments.dart';
import '../notifications_page/notifications.dart';
import '../security_life/security_life.dart';
import '../shopping/shopping.dart';
import 'home_component/appBar_component.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const[
              HeaderComponent(),
              AccountValue(),
              MenuItems(),
              Divider(thickness: 1.6,),
              MyCredistCard(),
              Divider(thickness: 1.6,),
              Notifications(),
              Divider(thickness: 1.6,),
              CreditCard(),
              Divider(thickness: 1.6,),
              Investments(),
              Divider(thickness: 1.6,),
              SecurityLife(),
              Divider(thickness: 1.6,),
              ShoppingView(),
              Divider(thickness: 1.6,),
              FindOutMore(),
              
            ],
          ),
        ),
      ),
    );
  }
}
