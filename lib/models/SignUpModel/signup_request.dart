class SignUpRequest {
  String? firstName;
  String? lastName;
  String? eMail;
  String? mobileNo;
  String? password;
  String? confirmPassword;

  SignUpRequest(
      {this.firstName,
      this.lastName,
      this.eMail,
      this.mobileNo,
      this.password,
      this.confirmPassword});

  SignUpRequest.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    eMail = json['e_mail'];
    mobileNo = json['mobile_no'];
    password = json['password'];
    confirmPassword = json['confirm_password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['e_mail'] = this.eMail;
    data['mobile_no'] = this.mobileNo;
    data['password'] = this.password;
    data['confirm_password'] = this.confirmPassword;
    return data;
  }
}
