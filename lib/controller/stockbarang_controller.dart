// ignore_for_file: avoid_print

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:test_qtasnim/model/postbarang_model.dart';
import 'package:test_qtasnim/model/stockbarang_model.dart';
import 'package:test_qtasnim/services/stockbarang_service.dart';

class StockBarangController extends GetxController {
  var isLoading = true.obs;
  var stockbarangList = <StockBarang>[].obs;
  PostBarang? postBarang;
  final namaBarang = TextEditingController();

  final service = StockBarangService();

@override
void onInit() {
    fetchStockBarang();
    super.onInit();
  }

  void fetchStockBarang() async {
    isLoading.value = true;
    var getStockBarang = await service.fetchStockBarang();
    if (getStockBarang != null) {
      stockbarangList.value = getStockBarang;
      isLoading.value = false;
    }
  }

Future<void> postStockBarang() async {
  isLoading.value = true;
  var postStockBarang = await service.postStockBarang(namaBarang.text, "1");
  if (postStockBarang != null) {
    inspect(postStockBarang);
    isLoading.value = false;
  } else {
    print("Error");
  }
}

}
