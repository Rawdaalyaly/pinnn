import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/Product_provider.dart';
import '../Widgets/Product_widget.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Product Page"),
        ),
        body: Consumer<ProductProvider>(
          builder: (context,value,child){
            if(value.products.isEmpty){
              value.getproducts();
              return const Center(child: CircularProgressIndicator());
            }
            return GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2
            ), itemCount: 10,itemBuilder: (context,index)=>CardProductCustome(model: value.products[index]));
          },
        )
    );
  }
}