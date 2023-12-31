import "package:go_router/go_router.dart";

import "../Features/Cart View/CartView.dart";
import "../Features/Payment View/PaymentView.dart";

class AppRouter {
  static String cartView = "/";
  static String paymentView = "/paymentView";

  static final goRouter = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: cartView,
        builder: (context, state) => const CartView(),
      ),
      GoRoute(
        path: paymentView,
        builder: (context, state) => const PaymentView(),
      ),
    ],
  );
}
