import 'package:flutter/cupertino.dart';
import 'package:project_assessment7/Models/product_models.dart';

import '../Services/Product_service.dart';

class ProductProvider extends ChangeNotifier{
  List<ProductModel> products=[];
  Future<void> getproducts() async{
    products = await ProductService.GetProducts();
    notifyListeners();
  }
}