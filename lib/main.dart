import 'package:flutter/material.dart';

import 'package:ido_english/src/bloc/provider.dart';

import 'package:ido_english/src/pages/home_page.dart';
import 'package:ido_english/src/pages/login_page.dart';
import 'package:ido_english/src/pages/producto_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'iDo English',
        initialRoute: 'login',
        routes: {
          'login' : ( BuildContext context ) => LoginPage(),
          'home'  : ( BuildContext context ) => HomePage(),
          'producto'  : ( BuildContext context ) => ProductoPage(),
        },
        theme: ThemeData(
          primaryColor: Colors.deepOrange,
        ),
      ),
    );
      
  }
}