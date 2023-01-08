import 'package:foodapp/data/api/api_client.dart';
import 'package:foodapp/data/repository/popular_product_repo.dart';
import 'package:foodapp/utils/app_constants.dart';
import 'package:get/get.dart';

import '../Controllers/popular_product_controller.dart';

Future<void> init() async {
  //// Api client
  Get.lazyPut(() => ApiClient(appBaseUrl:AppConstants.BASE_URL));
  

  //// Repo
  Get.lazyPut(() => PopularproductRepo(apiClient: Get.find()));

  //// controller
  Get.lazyPut(() => PopoularProductController(
        popularproductRepo: Get.find(),
      ));
}
