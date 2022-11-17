import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:nubank_clone/controllers/controller_home_page.dart';

class AccountValue extends StatefulWidget {
  const AccountValue({ Key? key }) : super(key: key);

  @override
  State<AccountValue> createState() => _AccountValueState();
}

class _AccountValueState extends State<AccountValue> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _account(),
          const SizedBox(height: 12),
        _moneyAccount(),
        ],
      ),
    );
  }

  _account(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       const Text('Conta', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        GestureDetector(
          onTap: (){},
          child: const Icon(Icons.arrow_forward_ios_outlined, size: 18,),
        )
      ],
    );
  }

  _moneyAccount(){
    return  GetBuilder<ControllerHomePage>(
      init:ControllerHomePage(),
      builder: (controllerHomePage) {
        return Text(controllerHomePage.valueVisibility?controllerHomePage.saldo:'****', style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 21));
      }
    );
  }
}