import 'package:http/http.dart' as http;
import 'dart:convert';
import '/models/VerificationModel/verification_request.dart';
import '/models/VerificationModel/verification_response.dart';

class VerifyAPIService {
  Future<VerificationResponse> verify(
      VerificationRequest verificationRequest) async {
    String url = "http://care-engg.com/api/verify";

    final response =
        await http.post(Uri.parse(url), body: verificationRequest.toJson());
    //   if (response.statusCode == 200 || response.statusCode == 400) {
    return VerificationResponse.fromJson(
      json.decode(response.body),
    );
    //   } else {
    //     throw Exception('Failed to load data!');
    //   }
  }
}
