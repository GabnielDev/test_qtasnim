import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_qtasnim/pages/main_pages.dart';
import 'package:test_qtasnim/routes/route_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MainPages(),
      getPages: RoutePage.pages,
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

