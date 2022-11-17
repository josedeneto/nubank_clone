import 'package:get/get.dart';

class ControllerHomePage extends GetxController{
  String saldo = 'R\$ 824.123.00';
  bool valueVisibility = true;

  showValue(){
    valueVisibility = !valueVisibility;
    update();
  }
}