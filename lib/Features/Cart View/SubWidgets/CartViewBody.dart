import "package:flutter/material.dart";

import "../../../ConstValues.dart";
import "CartFeesAndButton.dart";
import "ProductsList.dart";

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
