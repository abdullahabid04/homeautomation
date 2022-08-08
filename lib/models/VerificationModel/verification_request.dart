class VerificationRequest {
  String? mobileNo;
  String? verificationCode;

  VerificationRequest({this.mobileNo, this.verificationCode});

  VerificationRequest.fromJson(Map<String, dynamic> json) {
    mobileNo = json['mobile_no'];
    verificationCode = json['verification_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mobile_no'] = this.mobileNo;
    data['verification_code'] = this.verificationCode;
    return data;
  }
}
