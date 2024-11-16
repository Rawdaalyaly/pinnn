import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Models/product_models.dart';

class Productdeatils extends StatelessWidget {
  Productdeatils({super.key,required this.products});
  ProductModel products;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Products Details Page"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(image: NetworkImage(products.image)),
            Text(products.name),
            Text("${products.price}"),
            Text(products.description)
          ],
        ),
      ),
    );
  }
}