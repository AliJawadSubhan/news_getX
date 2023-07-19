class UserInput {
  String? email;
  String? password;

  UserInput({this.email, this.password});

  UserInput.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
  }

  toJson() {
    return {
      'email': this.email,
      'password': this.password,
      // return data;
    };
  }
}
