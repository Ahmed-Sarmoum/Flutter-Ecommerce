import 'package:e_commerce/data/api/apiClient.dart';
import 'package:get/get_connect/http/src/response/response.dart';

import '../../utils/constants.dart';

class RecommendedProductRepo {
  final ApiClient apiClient;

  RecommendedProductRepo({required this.apiClient});

  Future<Response>getRecommendedProductList() async {
      return await apiClient.getData(Constants.RECOMMENDED_PRODUCT_URI);
  }
  
}