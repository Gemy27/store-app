class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;
  final RatingModel rating;
  const ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
    required this.rating,
  });
  factory ProductModel.fromJson(JsonData) {
    return ProductModel(
        id: JsonData["id"],
        title: JsonData["title"],
        description: JsonData["description"],
        price: JsonData["price"],
        image: JsonData["image"],
        rating: RatingModel.fromJson(JsonData["rating"]));
  }
}

class RatingModel {
  final int count;
  final double rate;

  const RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(JsonData) {
    return RatingModel(
      rate: JsonData['rate'],
      count: JsonData['count'],
    );
  }
}
