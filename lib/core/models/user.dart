class User {
  int id;
  String firstName;
  String lastName;
  int age;
  User({this.id, this.firstName, this.lastName, this.age});

  User.initial()
      : id = 0,
        firstName = '',
        lastName = '',
        age = 0;

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.firstName;
    data['username'] = this.lastName;
    data['age'] = this.age;
    return data;
  }

  String getFullName() {
    return "$firstName $lastName";
  }
}
