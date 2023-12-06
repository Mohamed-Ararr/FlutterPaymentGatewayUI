import "package:flutter/material.dart";
import "package:flutter_application_2/Core/AppRouter.dart";
import "package:go_router/go_router.dart";

import "../../../Core/AppColors.dart";
import "../../../Core/AppFonts.dart";

class ProceedPaymentButton extends StatelessWidget {
  const ProceedPaymentButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        GoRouter.of(context).push(AppRouter.paymentView);
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: AppColors.orangeColor,
        fixedSize: Size(MediaQuery.of(context).size.width, 45),
      ),
      child: Text(
        "Proceed payment",
        style: AppFonts.font17Black,
      ),
    );
  }
}
