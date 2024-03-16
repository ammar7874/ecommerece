// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  String? name;
  String? email;
  String? password;
  String? location;
  String? number;
  String? image;
  String? userId;
  int? status;
  UserModel({
    this.name,
    this.email,
    this.password,
    this.location,
    this.number,
    this.image,
    this.userId,
    this.status,
  });

  UserModel copyWith({
    String? name,
    String? email,
    String? password,
    String? location,
    String? number,
    String? image,
    String? userId,
    int? status,
  }) {
    return UserModel(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      location: location ?? this.location,
      number: number ?? this.number,
      image: image ?? this.image,
      userId: userId ?? this.userId,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'password': password,
      'location': location,
      'number': number,
      'image': image,
      'userId': userId,
      'status': status,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] != null ? map['name'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
      location: map['location'] != null ? map['location'] as String : null,
      number: map['number'] != null ? map['number'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
      userId: map['userId'] != null ? map['userId'] as String : null,
      status: map['status'] != null ? map['status'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(name: $name, email: $email, password: $password, location: $location, number: $number, image: $image, userId: $userId, status: $status)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.email == email &&
        other.password == password &&
        other.location == location &&
        other.number == number &&
        other.image == image &&
        other.userId == userId &&
        other.status == status;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        email.hashCode ^
        password.hashCode ^
        location.hashCode ^
        number.hashCode ^
        image.hashCode ^
        userId.hashCode ^
        status.hashCode;
  }
}
