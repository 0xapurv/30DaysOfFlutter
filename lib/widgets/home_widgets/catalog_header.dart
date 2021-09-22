import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Listed Products",
          style: TextStyle(
            color: Theme.of(context).errorColor,
          ),
        ),
        "Trending products".text.xl2.make(),
      ],
    );
  }
}
