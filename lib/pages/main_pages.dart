import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:test_qtasnim/config/base_client.dart';
import 'package:test_qtasnim/controller/stockbarang_controller.dart';
import 'package:test_qtasnim/model/postbarang_model.dart';
import 'package:test_qtasnim/model/stockbarang_model.dart';
import 'package:test_qtasnim/routes/route_name.dart';

class MainPages extends StatefulWidget {
  const MainPages({super.key});

  @override
  State<MainPages> createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPages> {
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * .3,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage("assets/img/top_header.png"),
              ),
            ),
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
                              "DASHBOARD",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                letterSpacing: 5,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      primary: false,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            Get.toNamed(RouteName.stockbarang_page);
                            //   
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 128,
                                  child: Icon(
                                    Icons.business_center,
                                    size: 128,
                                    color: Colors.blue,
                                  ),
                                ),
                                Text(
                                  "Stock Barang",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.blue[500]),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // controller.postStockBarang("Sabun Mandi", "1");
                            Get.toNamed(RouteName.addbarang_page);
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 128,
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 128,
                                    color: Colors.blue,
                                  ),
                                ),
                                Text(
                                  "Add Barang",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.blue[500]),
                                ),
                              ],
                            ),
                          ),
                        ),                       
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
