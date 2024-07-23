import 'dart:convert';
import 'package:mongo_dart/mongo_dart.dart';

MongoModelUsers mongoModelUsersFromJson(String str) =>
    MongoModelUsers.fromJson(json.decode(str));
String mongoModelUsersToJson(MongoModelUsers data) =>
    json.encode(data.toJson());

class MongoModelUsers {
  ObjectId id;
  String city;
  String details;
  String nameplae;
  String urlImage;

  MongoModelUsers({
    required this.id,
    required this.city,
    required this.details,
    required this.nameplae,
    required this.urlImage,
  });

  factory MongoModelUsers.fromJson(Map<String, dynamic> json) {
    return MongoModelUsers(
      id: json["_id"] is ObjectId
          ? json["_id"]
          : ObjectId.fromHexString(json["_id"]),
      city: json["city"],
      details: json["details"],
      nameplae: json["nameplae"],
      urlImage: json["urlImage"],
    );
  }

  Map<String, dynamic> toJson() => {
        "_id": id.toHexString(),
        "nameplae": nameplae,
        "city": city,
        "details": details,
        "urlImage": urlImage,
      };
}
