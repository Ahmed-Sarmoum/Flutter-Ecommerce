class Product {
  int? _totalSize;
  int? _typeId;
  int? _offset;
  late List<ProductModel> _products;

  List<ProductModel> get products => _products;

  Product({required totalSize, required typeId, required offset, required products}) {
    _totalSize = totalSize;
    _typeId = typeId;
    _offset = offset;
    _products = products;
  }

  Product.fromJson(Map<String, dynamic> json) {
    _totalSize = json["totalSize"];
    _typeId = json["typeId"];
    _offset = json["offset"];
    if (json["products"] != null) {
      _products = <ProductModel>[];
      json['products'].forEach((v) {
        _products!.add(ProductModel.fromJson(v));
      });
    }
  }
}

class ProductModel {
  int? id;
  String? name;
  String? description;
  int? price;
  int? state;
  String? img;
  String? location;
  String? createAt;
  String? updateAt;

  ProductModel({this.id, this.name, this.description, this.price, this.state, this.img, this.location, this.createAt, this.updateAt});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    description = json["description"];
    price = json["price"];
    state = json["state"];
    img = json["img"];
    location = json["location"];
    createAt = json["createAt"];
    updateAt = json["updateAt"];
  }
}