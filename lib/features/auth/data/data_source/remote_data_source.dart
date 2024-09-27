import 'package:dio/dio.dart';
import 'package:ecommerce_app/core/services/network_service.dart';
import 'package:ecommerce_app/features/auth/data/data_source/data_source.dart';

class RemoteAuthDataSource implements AuthDataSource {
  Network network = Network();
  @override
  Future<Response> login(
      {required String email, required String password}) async {
    return await network.post(
        path: "/api/v1/auth/signin",
        data: {"email": email, "password": password});
  }

  @override
  Future<Response> signUp(
      {required String email,
      required String password,
      required String name,
      required String phone,
      required String rePassword}) async {
    return await network.post(path: "/api/v1/auth/signup", data: {
      "name": name,
      "email": email,
      "password": password,
      "rePassword": rePassword,
      "phone": phone
    });
  }
}
