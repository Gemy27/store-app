import 'package:storeapp/helper/Api.dart';

class AllCategoriesServices {
  Future<List<dynamic>> getcategories() async {
    List<dynamic> data =
        await Api().get(url: "https://fakestoreapi.com/products/categories");
    return data;
  }
}
