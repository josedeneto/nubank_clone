import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:nubank_clone/core/theme/app_colors.dart';

import '../../../controllers/controller_home_page.dart';

class HeaderComponent extends StatefulWidget {
  const HeaderComponent({Key? key}) : super(key: key);

  @override
  State<HeaderComponent> createState() => _HeaderComponentState();
}

class _HeaderComponentState extends State<HeaderComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.defaultColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              profile(),
              options(),
            ],
          ),
          const SizedBox(height: 32),
          welcome(),
        ],
      ),
    );
  }

  GestureDetector profile() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 50,
        height: 50,
        margin: const EdgeInsets.only(left: 20, top: 15),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.secondaryColor,
        ),
        child: const Icon(
          Icons.person_outline,
          color: AppColors.white,
        ),
      ),
    );
  }

  options() {
    return GetBuilder<ControllerHomePage>(
        init: ControllerHomePage(),
        builder: (controllerHomePage) {
          return Row(
            children: [
              IconButton(
                onPressed: () => controllerHomePage.showValue(),
                icon: Icon(
                  controllerHomePage.valueVisibility
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: AppColors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.help_outline_outlined,
                  color: AppColors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person_add_alt_outlined,
                    color: AppColors.white),
              )
            ],
          );
        });
  }

  welcome() {
    return Container(
      margin: const EdgeInsets.only(left: 20, bottom: 20),
      child: const Text(
        'Olá, José',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }
}
