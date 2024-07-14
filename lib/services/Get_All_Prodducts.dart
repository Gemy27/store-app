import 'package:storeapp/helper/Api.dart';
import 'package:storeapp/models/product_model.dart';

class AllProductsServices {
  Future<List<ProductModel>> getProducts() async {
    List<dynamic> data =
        await Api().get(url: "https://fakestoreapi.com/products");
    List<ProductModel> products = [];
    for (int i = 0; i < 5; i++) {
      for (int i = 0; i < 4; i++) {
        products.add(ProductModel.fromJson(data[i]));
      }
    }
    return products;
  }
}
