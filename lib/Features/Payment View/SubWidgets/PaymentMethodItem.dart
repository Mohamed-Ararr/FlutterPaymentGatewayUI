import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../ConstValues.dart';
import '../../../Core/AppColors.dart';

class PaymentMethodItem extends StatefulWidget {
  const PaymentMethodItem({
    super.key,
    required this.isActive,
    required this.index,
  });

  final bool isActive;
  final int index;

  @override
  State<PaymentMethodItem> createState() => _PaymentMethodItemState();
}

class _PaymentMethodItemState extends State<PaymentMethodItem> {
  List<String> paymentMethodsImages = [
    "assets/images/cardPaymentSvg.svg",
    "assets/images/paypalPaymentSvg.svg",
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: kBr8,
        boxShadow: widget.isActive
            ? [
                BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 1,
                  color: AppColors.tealColor,
                ),
              ]
            : [],
        border: Border.all(
          color: AppColors.greyColor,
        ),
      ),
      child: SvgPicture.asset(
        paymentMethodsImages[widget.index],
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
