import 'package:e_commerce/controllers/popular_product_controller.dart';
import 'package:e_commerce/controllers/recommeneded_product_controller.dart';
import 'package:e_commerce/pages/home/main_food_page.dart';
import 'package:e_commerce/routes/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_commerce/helper/dependencies.dart' as dep;
Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    // For Get Data From The Server
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getPopularProductList();


    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-commerce App',
      home: MainFoodPage(),
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}
