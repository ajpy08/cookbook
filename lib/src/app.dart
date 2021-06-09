import 'package:cookbook/login_page.dart';
import 'package:flutter/material.dart';

class CookBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //home: MyHomePage(),
      initialRoute: '/',
      routes: {'/': (BuildContext context) => LoginPage()},
    );
  }
}
