import 'package:flutter/cupertino.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_modulo1_fake_backend/modulo1_fake_backend.dart'
    as server;

// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_modulo1_fake_backend/models.dart';

class ServerController {
  void init(BuildContext context) {
    server.generateData(context);
  }

  Future<User> login(String userName, String password) async {
    return await server.backendLogin(userName, password);
  }
}
