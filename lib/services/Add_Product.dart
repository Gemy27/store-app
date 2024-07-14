import 'package:storeapp/helper/Api.dart';
import 'package:storeapp/models/product_model.dart';

class AddProduct {
  Future<ProductModel> addproduct(
      {required String title,
      required String desc,
      required String price,
      required String image,
      required String category}) async {
    Map<String, dynamic> data = await Api().post(
      url: "https://fakestoreapi.com/products",
      body: {
        "title": title,
        "price": price,
        "description": desc,
        "image": image,
        "category": category,
      },
      token: null,
    );
    return ProductModel.fromJson(data);
  }
}
