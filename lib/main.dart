import 'package:flutter/material.dart';
import 'package:food_app/core/routes.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'FenomenSans',
      ),
      title: 'Finance App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      getPages: routes,
    );
  }
}
