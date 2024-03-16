// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ShopModel {
  String? name;
  String? storename;
  String? city;
  String? gmail;
  String? address;
  String? passsword;
  String? image;
  String? shopid;
  int? status;
  ShopModel({
    this.name,
    this.storename,
    this.city,
    this.gmail,
    this.address,
    this.passsword,
    this.image,
    this.shopid,
    this.status,
  });

  ShopModel copyWith({
    String? name,
    String? storename,
    String? city,
    String? gmail,
    String? address,
    String? passsword,
    String? image,
    String? shopid,
    int? status,
  }) {
    return ShopModel(
      name: name ?? this.name,
      storename: storename ?? this.storename,
      city: city ?? this.city,
      gmail: gmail ?? this.gmail,
      address: address ?? this.address,
      passsword: passsword ?? this.passsword,
      image: image ?? this.image,
      shopid: shopid ?? this.shopid,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'storename': storename,
      'city': city,
      'gmail': gmail,
      'address': address,
      'passsword': passsword,
      'image': image,
      'shopid': shopid,
      'status': status,
    };
  }

  factory ShopModel.fromMap(Map<String, dynamic> map) {
    return ShopModel(
      name: map['name'] != null ? map['name'] as String : null,
      storename: map['storename'] != null ? map['storename'] as String : null,
      city: map['city'] != null ? map['city'] as String : null,
      gmail: map['gmail'] != null ? map['gmail'] as String : null,
      address: map['address'] != null ? map['address'] as String : null,
      passsword: map['passsword'] != null ? map['passsword'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
      shopid: map['shopid'] != null ? map['shopid'] as String : null,
      status: map['status'] != null ? map['status'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ShopModel.fromJson(String source) =>
      ShopModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ShopModel(name: $name, storename: $storename, city: $city, gmail: $gmail, address: $address, passsword: $passsword, image: $image, shopid: $shopid, status: $status)';
  }

  @override
  bool operator ==(covariant ShopModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.storename == storename &&
        other.city == city &&
        other.gmail == gmail &&
        other.address == address &&
        other.passsword == passsword &&
        other.image == image &&
        other.shopid == shopid &&
        other.status == status;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        storename.hashCode ^
        city.hashCode ^
        gmail.hashCode ^
        address.hashCode ^
        passsword.hashCode ^
        image.hashCode ^
        shopid.hashCode ^
        status.hashCode;
  }
}
