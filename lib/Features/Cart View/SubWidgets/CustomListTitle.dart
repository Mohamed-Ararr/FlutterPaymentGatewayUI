import "package:flutter/material.dart";

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.title, required this.amount});

  final String title;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Text(amount),
    );
  }
}
