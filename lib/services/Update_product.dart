import 'package:storeapp/helper/Api.dart';
import 'package:storeapp/models/product_model.dart';

class UpdateProduct{

  Future<ProductModel> updateproduct({required String title,
      required String desc,
      required String price,
      required String image,
      required String category}) async{
    Map<String,dynamic> data= await Api().put(url: "https://fakestoreapi.com/products",
      body: {
        "title": title,
        "price": price,
        "description": desc,
        "image": image,
        "category": category,
      },);
      return ProductModel.fromJson(data);
  }
}