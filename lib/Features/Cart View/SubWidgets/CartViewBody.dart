import "package:flutter/material.dart";
import "package:flutter_application_2/ConstValues.dart";
import "package:flutter_application_2/Features/Cart%20View/SubWidgets/ProductsList.dart";

import "CartFeesAndButton.dart";

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "My Cart"),
      body: Padding(
        padding: kPaddingH16V12,
        child: const CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: ProductsList()),
            SliverFillRemaining(
              hasScrollBody: false,
              child: CartFeesAndButton(),
            ),
          ],
        ),
      ),
    );
  }
}
