import "package:flutter/material.dart";
import "../../../Core/AppColors.dart";
import "../../../Core/AppFonts.dart";
import "../../ConstValues.dart";

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.title});

  final Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: kBr8,
        ),
        backgroundColor: AppColors.orangeColor,
        fixedSize: Size(MediaQuery.of(context).size.width, 45),
      ),
      child: Text(
        title,
        style: AppFonts.font17Black,
      ),
    );
  }
}
