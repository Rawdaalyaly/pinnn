class ProductModel{
 String image , description , name , price;
  ProductModel({required this.image , required this.description , required this.name , required this.price});

  factory ProductModel.fromjson(Map<String , dynamic> json , int index)
 {
    return ProductModel(image: json["data"]["products"][index]["image"],
        description: json["data"]["products"][index]["description"],
        name: json["data"]["products"][index]["name"],
        price: json["data"]["products"][index]["price"]);
 }
}