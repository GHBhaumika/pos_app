class Bill {
  final String id;
  final DateTime dateTime;
  final double totalAmount;
  final String paymentMethod;

  Bill({
    required this.id,
    required this.dateTime,
    required this.totalAmount,
    required this.paymentMethod,
  });

  factory Bill.fromMap(Map<String, dynamic> map) {
    return Bill(
      id: map['id'],
      dateTime: DateTime.parse(map['dateTime']),
      totalAmount: (map['totalAmount'] as num).toDouble(),
      paymentMethod: map['paymentMethod'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'dateTime': dateTime.toIso8601String(),
      'totalAmount': totalAmount,
      'paymentMethod': paymentMethod,
    };
  }

  factory Bill.fromJson(Map<String, dynamic> json) =>
      Bill.fromMap(json);

  Map<String, dynamic> toJson() => toMap();
}