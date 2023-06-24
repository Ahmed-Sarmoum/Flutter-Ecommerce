import 'package:e_commerce/data/api/apiClient.dart';
import 'package:e_commerce/utils/constants.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService{
  final ApiClient apiClient;

  PopularProductRepo({required this.apiClient}) {
  }

  Future<Response> getPopularProductList() async {
    return await apiClient.getData(Constants.POPULAR_PRODUCT_URI); // end point url
  }
}