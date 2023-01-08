import 'package:flutter/material.dart';
import 'package:foodapp/Controllers/popular_product_controller.dart';
import 'package:foodapp/Pages/Food/popular_food_detail.dart';
import 'package:foodapp/Pages/Food/recommded_food_detail.dart';
import 'package:foodapp/Pages/Home/main_food_page.dart';
import 'package:get/get.dart';
import 'Pages/Home/food_page_body.dart';
import 'helper/dependencies.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopoularProductController>().getPopularProductList;
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainFoodPage());
  }
}
