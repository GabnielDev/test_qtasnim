// // To parse this JSON data, do
// //
// //     final postBarang = postBarangFromJson(jsonString);

// import 'dart:convert';

// PostBarang postBarangFromJson(String str) => PostBarang.fromJson(json.decode(str));

// String postBarangToJson(PostBarang data) => json.encode(data.toJson());

// class PostBarang {
//     PostBarang({
//         this.name,
//         this.typeId,
//         this.updatedAt,
//         this.createdAt,
//         this.id,
//     });

//     String? name;
//     String? typeId;
//     DateTime? updatedAt;
//     DateTime? createdAt;
//     int? id;

//     factory PostBarang.fromJson(Map<String, dynamic> json) => PostBarang(
//         name: json["name"],
//         typeId: json["type_id"],
//         updatedAt: DateTime.parse(json["updated_at"]),
//         createdAt: DateTime.parse(json["created_at"]),
//         id: json["id"],
//     );

//     Map<String, dynamic> toJson() => {
//         "name": name,
//         "type_id": typeId,
//         "updated_at": updatedAt?.toIso8601String(),
//         "created_at": createdAt?.toIso8601String(),
//         "id": id,
//     };
// }

// To parse this JSON data, do
//
//     final postBarang = postBarangFromMap(jsonString);

import 'dart:convert';

class PostBarang {
    PostBarang({
        this.name,
        this.typeId,
        this.updatedAt,
        this.createdAt,
        this.id,
    });

    final String? name;
    final String? typeId;
    final DateTime? updatedAt;
    final DateTime? createdAt;
    final int? id;

    PostBarang copyWith({
        String? name,
        String? typeId,
        DateTime? updatedAt,
        DateTime? createdAt,
        int? id,
    }) => 
        PostBarang(
            name: name ?? this.name,
            typeId: typeId ?? this.typeId,
            updatedAt: updatedAt ?? this.updatedAt,
            createdAt: createdAt ?? this.createdAt,
            id: id ?? this.id,
        );

    factory PostBarang.fromJson(String str) => PostBarang.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory PostBarang.fromMap(Map<String, dynamic> json) => PostBarang(
        name: json["name"],
        typeId: json["type_id"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "type_id": typeId,
        "updated_at": updatedAt!.toIso8601String(),
        "created_at": createdAt!.toIso8601String(),
        "id": id,
    };
}

