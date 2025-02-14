import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Providers/Product_provider.dart';
import 'Providers/Registration_provider.dart';
import 'Screens/SignUp_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>ProductProvider()),
        ChangeNotifierProvider(create: (context)=>RegistrationProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignUpPage(),
      ),
    );
  }
}