import 'package:flutter/material.dart';
import 'package:green_business/Store/models/Product.dart';
import 'package:green_business/form_of_buying.dart';
import '../../../constants.dart';
import 'package:green_business/Store/screens/details/components/add_to_cart.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key ? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: <Widget>[
          Expanded(
            child: SizedBox(
              height: 50,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: product.color,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Confirmation(value: product.title,price: product.price,)));
                },
                child: Text(
                  "Buy  Now".toUpperCase(),
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}