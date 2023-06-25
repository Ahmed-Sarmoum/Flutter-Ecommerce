import 'package:e_commerce/controllers/popular_product_controller.dart';
import 'package:e_commerce/data/api/apiClient.dart';
import 'package:e_commerce/data/repository/popular_product_repo.dart';
import 'package:e_commerce/utils/constants.dart';
import 'package:get/get.dart';
import '../controllers/recommeneded_product_controller.dart';
import '../data/repository/recommended_product_repo.dart';

Future<void> init() async{
  Get.lazyPut(() => ApiClient(appBaseUrl: Constants.BASE_URL));

  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));

  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() => RecommendedProductController(recommendedProductRepo: Get.find()));
}