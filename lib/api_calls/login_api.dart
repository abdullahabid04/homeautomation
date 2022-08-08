import 'package:http/http.dart' as http;
import 'dart:convert';
import '/models/LoginModel/login_request.dart';
import '/models/LoginModel/login_response.dart';

class LoginAPIService {
  Future<LoginResponse> login(LoginRequest loginRequest) async {
    String url = "http://care-engg.com/api/login";

    final response =
        await http.post(Uri.parse(url), body: loginRequest.toJson());
    //   if (response.statusCode == 200 || response.statusCode == 400) {
    return LoginResponse.fromJson(
      json.decode(response.body),
    );
    //   } else {
    //     throw Exception('Failed to load data!');
    //   }
  }
}
