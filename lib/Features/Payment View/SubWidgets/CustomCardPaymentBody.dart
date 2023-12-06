import 'package:flutter/cupertino.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

import '../../../ConstValues.dart';
import '../../../Core/Custom Widgets/CustomButton.dart';

class CustomCardPaymentBody extends StatefulWidget {
  const CustomCardPaymentBody({super.key});

  @override
  State<CustomCardPaymentBody> createState() => _CustomCardPaymentBodyState();
}

class _CustomCardPaymentBodyState extends State<CustomCardPaymentBody> {
  String cardNumber = "";
  String expiryDate = "";
  String cardHolderName = "";
  String cvvCode = "";
  bool showBackView = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
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
            cardHolderDecoration: buildInputDecoration("Card Holder", ""),
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
          formKey: formKey,
        ),
        const SizedBox(height: 15),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.93,
          child: CustomButton(
            title: "Confirm Payment",
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
