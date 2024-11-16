import 'package:dio/dio.dart';
import 'package:project_assessment7/Models/product_models.dart';

class ProductService{
  static Dio dio = Dio();
  static Future<List<ProductModel>>GetProducts() async{
  try{
     List<ProductModel>products = [];
     final response = await dio.get('https://student.valuxapps.com/api/home');
     if(response.statusCode == 200)
       {
          for(int i = 0 ; i< 10 ; i++)
            {
               products.add(ProductModel.fromjson(response.data, i));
            }
          print(products);
          return products;
       }
     else{
       throw Exception("getting products failed");
     }
  }
  catch(e) {
     throw Exception("error $e");
  }
    }
}