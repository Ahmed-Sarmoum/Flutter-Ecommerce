import 'package:e_commerce/controllers/popular_product_controller.dart';
import 'package:e_commerce/data/api/apiClient.dart';
import 'package:e_commerce/data/repository/popular_product_repo.dart';
import 'package:e_commerce/utils/constants.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

Future<void> init() async{
  Get.lazyPut(() => ApiClient(appBaseUrl: Constants.BASE_URL));

  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}