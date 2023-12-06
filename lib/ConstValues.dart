import 'package:flutter/material.dart';

import 'Core/AppColors.dart';
import 'Core/AppFonts.dart';

// CUSTOM METHODS
AppBar buildAppBar({required String title, Widget? backButton}) {
  return AppBar(
    leading: backButton,
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(
      title,
      style: TextStyle(
        color: AppColors.blackColor,
      ),
    ),
    centerTitle: true,
  );
}

InputDecoration buildInputDecoration(String labelText, String hintText) {
  return InputDecoration(
    labelText: labelText,
    labelStyle: AppFonts.font17B500Black.copyWith(color: Colors.black54),
    hintText: hintText,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.greyColor),
      borderRadius: kBr8,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.tealColor),
      borderRadius: kBr8,
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.redColor),
      borderRadius: kBr8,
    ),
  );
}

// PADDING CONSTANTS
EdgeInsets kPaddingH15V12 = const EdgeInsets.symmetric(
  horizontal: 15,
  vertical: 12,
);

EdgeInsets kPaddingLR20B10 = const EdgeInsets.only(
  right: 20,
  left: 20,
  bottom: 10,
);

EdgeInsets kPaddingAll1AndHalf = const EdgeInsets.all(1.5);

// MARGIN CONSTANTS
EdgeInsets kMarginT10 = const EdgeInsets.only(top: 10);

// BORDER RADIUS CONSTANTS
BorderRadius kBr8 = BorderRadius.circular(8);
