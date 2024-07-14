import 'package:storeapp/helper/Api.dart';
import 'package:storeapp/models/product_model.dart';

class GetCategoryProducts {
  Future<List<ProductModel>> getcategoryproducts(
      {required String CategoryName}) async {
    List<dynamic> data = await Api()
        .get(url: "https://fakestoreapi.com/products/category/$CategoryName");
    List<ProductModel> products = [];
    for (int i = 0; i < data.length; i++) {
      products.add(ProductModel.fromJson(data[i]));
    }
    return products;
  }
}
