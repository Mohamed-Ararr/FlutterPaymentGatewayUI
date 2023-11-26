import 'package:flutter/material.dart';
import 'package:flutter_application_2/Core/AppRouter.dart';

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
