import 'package:flutter/material.dart';
import 'package:green_business/Store/models/Product.dart';
import '../../../constants.dart';

class Description extends StatelessWidget {
  const Description({
    Key ? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            product.description,
            style: const TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}
