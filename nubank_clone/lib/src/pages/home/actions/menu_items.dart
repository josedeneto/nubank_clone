import 'package:flutter/material.dart';
import 'package:nubank_clone/core/theme/app_colors.dart';

class MenuItems extends StatefulWidget {
  const MenuItems({Key? key}) : super(key: key);

  @override
  State<MenuItems> createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            itemMenu(icon:Icons.pix_outlined, itemName: 'Área Pix', isFirst: true),
            itemMenu(icon:Icons.qr_code_outlined, itemName: 'Pagar'),
            itemMenu(icon:Icons.payments_outlined, itemName: 'Transferir'),
            itemMenu(icon:Icons.money, itemName: 'Depositar'),
            itemMenu(icon:Icons.credit_card, itemName: 'Recarga'),
            itemMenu(icon:Icons.volunteer_activism_outlined, itemName: 'Doação'),
          ],
        ),
      ),
    );
  }
  itemMenu({required IconData icon, required String itemName, bool ?isFirst}){
    return Container(
              padding:(isFirst??false)? const EdgeInsets.only(left:20, right: 7): const EdgeInsets.symmetric(horizontal: 7),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.greyColor),
                    child: Icon(icon),
                  ),
                   Text(
                    itemName,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
  }
}
