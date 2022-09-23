// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;
import 'package:test_qtasnim/model/postbarang_model.dart';
import 'package:test_qtasnim/model/stockbarang_model.dart';

class StockBarangService {
  static var client = http.Client();

   Future<List<StockBarang>?> fetchStockBarang() async {
    var response =
        await client.get(Uri.parse("http://162.0.223.55:8008/api/items"));

    // var response1 = await client.get(BaseClient().getStockBarang("items")).getStockBarang("items");

    if (response.statusCode == 200) {
      var jsonString = response.body;
      return stockBarangFromJson(jsonString);
    } else {
      print("Error");
    }
    return null;
  }

   Future<PostBarang?> postStockBarang(
      String name, String typeId) async {
    var response =
        await client.post(Uri.parse("http://162.0.223.55:8008/api/items"
        ), body: {'name': name, 'type_id': typeId});

    if (response.statusCode == 200) {
      var jsonString = response.body;
      return PostBarang.fromJson(jsonString);
    } else {
      print("Error");
    }
    return null;
  }
}
