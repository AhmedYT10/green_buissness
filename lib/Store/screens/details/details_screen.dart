import 'package:flutter/material.dart';
import 'package:green_business/Store/models/Product.dart';
import 'package:green_business/Store/screens/details/components/body.dart';
import 'package:green_business/Store/screens/home/home_screen.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key ? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back , color: Colors.white),
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreenStore()))
      ),
    );
  }
}