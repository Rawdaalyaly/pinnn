import 'package:dio/dio.dart';
import 'package:project_assessment7/Models/Registration_model.dart';
import 'package:project_assessment7/Models/product_models.dart';

class RegistrationService{
  static Dio dio = Dio();
  static Future<RegistrationModel>Login ( String email , String password) async{
    try{
          final response = await dio.get('https://student.valuxapps.com/api/login' , data: {
            'email' : email, "password" : password});
          if(response.statusCode == 200)
          {
            print(response.data);
            return RegistrationModel.fromjson(response.data);
          }
      else{
        throw Exception("login failed");
      }
    }
    catch(e) {
      throw Exception("error $e");
    }
  }

  static Future<RegistrationModel>signUp(String email , String password , String phone ,
     String name)async{
    try{
      final response = await dio.post('https://student.valuxapps.com/api/register' , data: {
        'name' :name,
        'email' : email,
        'password' : password,
        'phone' : phone,});
      if(response.statusCode == 200 )
        {
          print(response.data);
          return RegistrationModel.fromjson(response.data);
        }
      else
        {
           throw Exception("SignUp fail");
        }
    }
    catch(e)
    {
      throw Exception("error $e");
    }

  }
}
