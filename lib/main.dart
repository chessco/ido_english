import 'package:flutter/material.dart';

import 'package:ido_english/src/bloc/provider.dart';

import 'package:ido_english/src/pages/home_page.dart';
import 'package:ido_english/src/pages/login2_page.dart';
import 'package:ido_english/src/pages/login_page.dart';
import 'package:ido_english/src/pages/producto_page.dart';
import 'package:ido_english/src/pages/registro_page.dart';
import 'package:ido_english/src/preferencias_usuario/preferencias_usuario.dart';

void main() async {
  //for issue related to the upgrade

  WidgetsFlutterBinding.ensureInitialized();

  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final prefs = new PreferenciasUsuario();
    print(prefs.token);
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'iDo English',
        initialRoute: 'login',
        routes: {
          'login': (BuildContext context) => LoginPage(),
          'registro': (BuildContext context) => RegistroPage(),
          'home': (BuildContext context) => HomePage(),
          'producto': (BuildContext context) => ProductoPage(),
        },
        theme: ThemeData(
          primaryColor: Color(0xFF17191C),
          brightness: Brightness.light,
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          cursorColor: Colors.white,
          inputDecorationTheme: InputDecorationTheme(
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
          fontFamily: 'AvenirLTStd',
        ),
      ),
    );
  }
}
