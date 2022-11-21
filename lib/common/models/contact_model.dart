import 'dart:convert';

// https://app.quicktype.io/
// To parse this JSON data, do
//     final contactData = contactDataFromJson(jsonString);

ContactModel contactDataFromJson(String str) => ContactModel.fromJson(json.decode(str));
String contactDataToJson(ContactModel data) => json.encode(data.toJson());

class ContactModel {
  bool? approved;
  bool contactOnly;
  // String? email;
  String id;
  String name;
  String rank;
  String team;
  String phone;
  String image;

  ContactModel({
    this.approved,
    required this.contactOnly,
    // this.email,
    required this.id,
    required this.name,
    required this.rank,
    required this.team,
    required this.phone,
    required this.image,
  });


  ContactModel copyWith({
    bool? approved,
    // bool? contactOnly,
    // String? email,
    String? id,
    String? name,
    String? rank,
    String? team,
    String? phone,
    String? image,
  }) =>
      ContactModel(
        approved: approved ?? this.approved,
        contactOnly: contactOnly ?? this.contactOnly,
        // email: email ?? this.email,
        id: id ?? this.id,
        name: name ?? this.name,
        rank: rank ?? this.rank,
        team: team ?? this.team,
        phone: phone ?? this.phone,
        image: image ?? this.image,
      );

  factory ContactModel.fromJson(Map<String, dynamic> json) => ContactModel(
    approved: json["approved"] ?? false,
    contactOnly: json["contactOnly"] ?? false,
    id: json["id"] ?? '',
    // email: json["email"] ?? '',
    rank: json["rank"] ?? '',
    name: json["name"] ?? '',
    team: json["team"] ?? '',
    phone: json["phone"] ?? '',
    image: json["image"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "approved": approved,
    "contactOnly": contactOnly,
    "id": id,
    // "email": email,
    "rank": rank,
    "name": name,
    "team": team,
    "phone": phone,
    "image": image,
  };
}
