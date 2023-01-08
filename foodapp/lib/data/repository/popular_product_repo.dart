import 'package:foodapp/utils/app_constants.dart';
import 'package:get/get.dart';
import '../api/api_client.dart';

class PopularproductRepo extends GetxService {
  final ApiClient apiClient;
  PopularproductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
  
  }
}
