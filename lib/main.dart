import 'package:Flutter_Payment_Gateway_Integration/Core/AppRouter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PaymentGateway());
}

class PaymentGateway extends StatelessWidget {
  const PaymentGateway({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.goRouter,
    );
  }
}
