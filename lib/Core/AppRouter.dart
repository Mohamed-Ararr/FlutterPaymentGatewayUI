import "package:go_router/go_router.dart";

import "../Features/Cart View/CartView.dart";

class AppRouter {
  static String cartView = "/";

  static final goRouter = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: cartView,
        builder: (context, state) => const CartView(),
      ),
    ],
  );
}
