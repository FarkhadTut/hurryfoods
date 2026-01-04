import 'package:flutter/foundation.dart';

@immutable
class Product {
  const Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.originalPrice,
    required this.imageUrl,
  });

  final String id;
  final String name;
  final String description;
  final double price;
  final double originalPrice;
  final String imageUrl;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.id == id &&
        other.name == name &&
        other.description == description &&
        other.price == price &&
        other.originalPrice == originalPrice &&
        other.imageUrl == imageUrl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        description.hashCode ^
        price.hashCode ^
        originalPrice.hashCode ^
        imageUrl.hashCode;
  }
}

@immutable
class Store {
  const Store({
    required this.id,
    required this.name,
    required this.address,
    required this.rating,
    required this.imageUrl,
    required this.products,
  });

  final String id;
  final String name;
  final String address;
  final double rating;
  final String imageUrl;
  final List<Product> products;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Store &&
        other.id == id &&
        other.name == name &&
        other.address == address &&
        other.rating == rating &&
        other.imageUrl == imageUrl &&
        listEquals(other.products, products);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        address.hashCode ^
        rating.hashCode ^
        imageUrl.hashCode ^
        products.hashCode;
  }
}
