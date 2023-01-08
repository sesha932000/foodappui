import 'package:foodapp/Models/products_model.dart';
import 'package:get/get.dart';

import '../data/repository/popular_product_repo.dart';

class PopoularProductController extends GetxController {
  final PopularproductRepo popularproductRepo;
  PopoularProductController({required this.popularproductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getPopularProductList() async {
    Response response = await popularproductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      print("got products");
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      print(_popularProductList);
      _isLoaded = true;
      update();
    } else {}
  }
}
