import 'package:flutter/cupertino.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

import '../../../ConstValues.dart';

class CustomCardPaymentBody extends StatefulWidget {
  const CustomCardPaymentBody(
      {super.key, required this.formKey, required this.autovalidateMode});

  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;

  @override
  State<CustomCardPaymentBody> createState() => _CustomCardPaymentBodyState();
}

class _CustomCardPaymentBodyState extends State<CustomCardPaymentBody> {
  String cardNumber = "";
  String expiryDate = "";
  String cardHolderName = "";
  String cvvCode = "";
  bool showBackView = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CreditCardWidget(
          isHolderNameVisible: true,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          onCreditCardWidgetChange: (value) {},
        ),
        CreditCardForm(
          inputConfiguration: InputConfiguration(
            cardHolderDecoration:
                buildInputDecoration("Card Holder", "CARD HOLDER"),
            cardNumberDecoration: buildInputDecoration(
              "Card Number",
              "XXXX XXXX XXXX XXXX",
            ),
            expiryDateDecoration: buildInputDecoration(
              "Expiry Date",
              "MM/YY",
            ),
            cvvCodeDecoration: buildInputDecoration(
              "CCV",
              "XXX",
            ),
          ),
          cardNumber: cardNumber,
          cardHolderName: cardHolderName,
          expiryDate: expiryDate,
          cvvCode: cvvCode,
          onCreditCardModelChange: (creditCardModel) {
            cardNumber = creditCardModel.cardNumber;
            expiryDate = creditCardModel.expiryDate;
            cardHolderName = creditCardModel.cardHolderName;
            cvvCode = creditCardModel.cvvCode;
            showBackView = creditCardModel.isCvvFocused;
            setState(() {});
          },
          formKey: widget.formKey,
          autovalidateMode: widget.autovalidateMode,
        ),
      ],
    );
  }
}
