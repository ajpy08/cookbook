import 'package:cookbook/login_page.dart';
import 'package:flutter/material.dart';

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
              return LoginPage();
            default:
              return LoginPage();
          }
        });
      },
      // routes: {'/': (BuildContext context) => LoginPage()},
    );
  }
}
