import 'package:get/get.dart';
import 'package:test_qtasnim/pages/add_target.dart';
import 'package:test_qtasnim/pages/main_pages.dart';
import 'package:test_qtasnim/pages/stockbarang_screens.dart';
import 'package:test_qtasnim/routes/route_name.dart';

class RoutePage {
  static final pages = [
    GetPage(name: RouteName.main_page, page: () => MainPages()),
    GetPage(name: RouteName.stockbarang_page, page: () => StockBarangPage()),
    GetPage(name: RouteName.addbarang_page, page: () => AddStockBarangPage())
  ];
}