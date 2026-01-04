import 'package:hurryfoods/domain/entities/store.dart';

final List<Product> dummyProducts = [
  const Product(
    id: 'p1',
    name: 'Assorted Pastries Bag',
    description: 'A mix of delicious pastries from today\'s fresh bake.',
    price: 3.99,
    originalPrice: 10.00,
    imageUrl: 'https://picsum.photos/id/10/200/200',
  ),
  const Product(
    id: 'p2',
    name: 'Vegan Sandwich & Juice',
    description: 'A fresh vegan sandwich with a side of orange juice.',
    price: 4.50,
    originalPrice: 12.00,
    imageUrl: 'https://picsum.photos/id/20/200/200',
  ),
  const Product(
    id: 'p3',
    name: 'Coffee & Cake Slice',
    description: 'Freshly brewed coffee with a slice of cake.',
    price: 2.50,
    originalPrice: 7.00,
    imageUrl: 'https://picsum.photos/id/30/200/200',
  ),
];

final List<Store> dummyStores = [
  Store(
    id: 's1',
    name: 'Bakery Bliss',
    address: '123 Main St',
    rating: 4.8,
    imageUrl: 'https://picsum.photos/id/40/300/200',
    products: dummyProducts,
  ),
  Store(
    id: 's2',
    name: 'Green Bites Cafe',
    address: '456 Oak Ave',
    rating: 4.5,
    imageUrl: 'https://picsum.photos/id/50/300/200',
    products: dummyProducts.sublist(0, 1), // Only one product for this store
  ),
  Store(
    id: 's3',
    name: 'Daily Fresh Market',
    address: '789 Pine Ln',
    rating: 4.2,
    imageUrl: 'https://picsum.photos/id/60/300/200',
    products: dummyProducts.sublist(1, 2), // Only one product for this store
  ),
  Store(
    id: 's4',
    name: 'Coffee Corner',
    address: '101 Elm Rd',
    rating: 4.7,
    imageUrl: 'https://picsum.photos/id/70/300/200',
    products: dummyProducts.sublist(2, 3), // Only one product for this store
  ),
];
