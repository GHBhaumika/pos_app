class Product {
  final String id;
  final String name;
  final double price;
  final double? costPrice;
  final int stock;
  final String categoryId;
  final DateTime createdAt;

  Product({
    required this.id,
    required this.name,
    required this.price,
    this.costPrice,
    required this.stock,
    required this.categoryId,
    required this.createdAt,
  });

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'],
      name: map['name'],
      price: (map['price'] as num).toDouble(),
      costPrice: map['costPrice'] != null
          ? (map['costPrice'] as num).toDouble()
          : null,
      stock: map['stock'],
      categoryId: map['categoryId'],
      createdAt: DateTime.parse(map['createdAt']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'costPrice': costPrice,
      'stock': stock,
      'categoryId': categoryId,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  factory Product.fromJson(Map<String, dynamic> json) =>
      Product.fromMap(json);

  Map<String, dynamic> toJson() => toMap();
}