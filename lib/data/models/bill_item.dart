class BillItem {
  final String id;
  final String billId;
  final String productId;
  final int quantity;
  final double price;

  BillItem({
    required this.id,
    required this.billId,
    required this.productId,
    required this.quantity,
    required this.price,
  });

  factory BillItem.fromMap(Map<String, dynamic> map) {
    return BillItem(
      id: map['id'],
      billId: map['billId'],
      productId: map['productId'],
      quantity: map['quantity'],
      price: (map['price'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'billId': billId,
      'productId': productId,
      'quantity': quantity,
      'price': price,
    };
  }

  factory BillItem.fromJson(Map<String, dynamic> json) =>
      BillItem.fromMap(json);

  Map<String, dynamic> toJson() => toMap();
}