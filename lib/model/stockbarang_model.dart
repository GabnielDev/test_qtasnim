// To parse this JSON data, do
//
//     final stockBarang = stockBarangFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<StockBarang> stockBarangFromJson(String str) => List<StockBarang>.from(
    json.decode(str).map((x) => StockBarang.fromJson(x)));

String stockBarangToJson(List<StockBarang> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class StockBarang {
  final int id;
  final String name;
  final int typeId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final Types types;
  final dynamic stocks;

  StockBarang({
    required this.id,
    required this.name,
    required this.typeId,
    required this.createdAt,
    required this.updatedAt,
    required this.types,
    required this.stocks,
  });

  factory StockBarang.fromJson(Map<String, dynamic> json) => StockBarang(
        id: json["id"],
        name: json["name"],
        typeId: json["type_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        types: Types.fromJson(json["types"]),
        stocks: json["stocks"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type_id": typeId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "types": types.toJson(),
        "stocks": stocks,
      };
}

class Types {
  final int id;
  final String name;
  final DateTime createdAt;
  final DateTime updatedAt;
  
  Types({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Types.fromJson(Map<String, dynamic> json) => Types(
        id: json["id"],
        name: json["name"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
