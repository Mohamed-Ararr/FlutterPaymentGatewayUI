import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import 'Core/AppColors.dart';
import 'Core/AppFonts.dart';
import 'Features/Cart View/SubWidgets/CustomDivider.dart';
import 'Features/Cart View/SubWidgets/CustomTotalListTile.dart';

// CUSTOM METHODS
AppBar buildAppBar({required String title}) {
  return AppBar(
    leading: BackButton(color: AppColors.blackColor),
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
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.redColor),
      borderRadius: kBr8,
    ),
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

AwesomeDialog completedPaymentPopUp(BuildContext context) {
  return AwesomeDialog(
    context: context,
    showCloseIcon: true,
    dialogType: DialogType.success,
    dialogBackgroundColor: AppColors.midGreyColor,
    body: Container(
      height: MediaQuery.of(context).size.height * 0.6,
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Thank You!", style: AppFonts.font20B500Black),
          const SizedBox(height: 5),
          Text(
            "Successfully Transfered",
            style: AppFonts.font17Black,
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Date", style: AppFonts.font17B500Black),
              Text("12/09/2023", style: AppFonts.font17B500Black),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Time", style: AppFonts.font17B500Black),
              Text("10:15 AM", style: AppFonts.font17B500Black),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Receiver", style: AppFonts.font17B500Black),
              Text("Sam Louis", style: AppFonts.font17B500Black),
            ],
          ),
          const SizedBox(height: 10),
          const CustomDivider(),
          const SizedBox(height: 10),
          const CustomTotalListTile(amount: "50\$"),
          Container(
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: kBr8,
            ),
            child: ListTile(
              leading: Icon(
                Icons.credit_card,
                color: AppColors.orangeColor,
                size: 35,
              ),
              title: Text("Credit Card", style: AppFonts.font17B500Black),
              subtitle:
                  Text("Master Card **79", style: AppFonts.font13LightGrey),
            ),
          ),
        ],
      ),
    ),
  );
}

// PADDING CONSTANTS
EdgeInsets kPaddingH16V12 = const EdgeInsets.symmetric(
  horizontal: 16,
  vertical: 12,
);

EdgeInsets kPaddingLR20B10 = const EdgeInsets.only(
  right: 20,
  left: 20,
  bottom: 10,
);

EdgeInsets kPaddingAll20 = const EdgeInsets.all(20);

EdgeInsets kPaddingAll1AndHalf = const EdgeInsets.all(1.5);

// MARGIN CONSTANTS
EdgeInsets kMarginT10 = const EdgeInsets.only(top: 10);
EdgeInsets kMarginAll16 = const EdgeInsets.all(16);

// BORDER RADIUS CONSTANTS
BorderRadius kBr8 = BorderRadius.circular(8);
