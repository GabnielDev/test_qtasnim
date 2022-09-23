import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:test_qtasnim/controller/stockbarang_controller.dart';

class StockBarangPage extends StatefulWidget {
  const StockBarangPage({super.key});

  @override
  State<StockBarangPage> createState() => _StockBarangPageState();
}

class _StockBarangPageState extends State<StockBarangPage> {
  @override
  Widget build(BuildContext context) {
    final StockBarangController controller = Get.put(StockBarangController());
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * .3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/img/top_header.png"))),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  height: 64,
                  margin: EdgeInsets.only(bottom: 60),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Stock Barang",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                letterSpacing: 5),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Obx(() => controller.isLoading.value
                          ? Center(
                              child: CircularProgressIndicator(),
                            )
                          : ListView.separated(
                              itemCount: controller.stockbarangList.length,
                              separatorBuilder: (context, index) => SizedBox(
                                height: 30,
                              ),
                              itemBuilder: (context, index) {
                                final item = controller.stockbarangList[index];
                                return Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: Colors.black
                                      ),
                                  ),
                                  child: Column(
                                    children: [
                                      _titleWidget(
                                          titleNama: "Nama Barang",
                                          valueName: item.name),
                                      _titleWidget(
                                          titleNama: "Stock Barang",
                                          valueName: item.stocks ?? "-"),
                                      _titleWidget(
                                          titleNama: "Jenis Barang",
                                          valueName: item.types.name),
                                    ],
                                  ),
                                );
                              },
                            )

                      // : ListView.builder(
                      //     itemCount: controller.stockbarangList.length,
                      //     itemBuilder: (context, index) {
                      //       var item = controller.stockbarangList[index];
                      //       return ListTile(
                      //         title: Text(item.name),
                      //         subtitle: Text(item.types.name),
                      //       );
                      //     })

                      ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

Widget _cardWidget() {
  return Container(
    height: 100,
    decoration: BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(color: Colors.black, offset: Offset(02, 02)),
    ]),
    child: Column(
      children: [
        Row(
          children: [
            Text("Nama Barang"),
            Text("Stock Barang"),
            Text("Jumlah Terjual"),
            Text("Jenis Barang"),
          ],
        )
      ],
    ),
  );
}

Widget _titleWidget({required String titleNama, required String valueName}) {
  return Row(
    children: [
      Text(titleNama),
      SizedBox(width: 10),
      Text(":"),
      SizedBox(width: 10),
      Text(valueName)
    ],
  );
}
