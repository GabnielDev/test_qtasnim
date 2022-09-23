import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_qtasnim/controller/stockbarang_controller.dart';

class AddStockBarangPage extends StatelessWidget {
  AddStockBarangPage({super.key});
  final StockBarangController controller = Get.put(StockBarangController());

  @override
  Widget build(BuildContext context) {
    // final StockBarangController controller = Get.put(StockBarangController());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(controller: controller.namaBarang,),
          TextField(),
          ElevatedButton(
              onPressed: () {
                controller.postStockBarang();
              },
              child: Text("Add Stock Barang"))
        ],
      ),
    );
  }
}
