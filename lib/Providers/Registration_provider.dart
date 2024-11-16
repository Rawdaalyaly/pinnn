import 'package:flutter/cupertino.dart';
import 'package:project_assessment7/Models/Registration_model.dart';
import '../Services/Registration_service.dart';


class RegistrationProvider extends ChangeNotifier{
  RegistrationModel? user;
  Future<void> Login({required String email , required String password}) async{
    user = await RegistrationService.Login(email , password);
    notifyListeners();
  }

  Future<void> SignUp({required String password , required String email ,
    required String name ,  required String number}) async{
    user = await RegistrationService.signUp(email, password, name, number);
    notifyListeners();
  }
}