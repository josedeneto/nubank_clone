
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_clone/core/theme/app_colors.dart';

PreferredSize appBar() {
    return PreferredSize(
      child: AppBar(
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: AppColors.defaultColor
        ),
      ),
      preferredSize: const Size.fromHeight(0),
    );
  }