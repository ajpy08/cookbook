import 'package:cookbook/login_page.dart';
import 'package:cookbook/src/connetion/server_controller.dart';
import 'package:cookbook/src/screens/home_page.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_modulo1_fake_backend/user.dart';

ServerController _serverController = ServerController();

class CookBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //home: MyHomePage(),
      initialRoute: '/',
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.cyan,
          accentColor: Colors.cyan[300]),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (BuildContext context) {
          switch (settings.name) {
            case "/":
              return LoginPage(_serverController, context);
            case "/home":
              User userLogged = settings.arguments as User;
              return HomePage(userLogged);
            default:
              return LoginPage(_serverController, context);
          }
        });
      },
      // routes: {'/': (BuildContext context) => LoginPage()},
    );
  }
}
