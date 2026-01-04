import 'package:flutter/material.dart';
import 'package:hurryfoods/data/dummy_data.dart';

class StoreDetailsScreen extends StatelessWidget {
  final String storeId;
  const StoreDetailsScreen({super.key, required this.storeId});

  @override
  Widget build(BuildContext context) {
    final store = dummyStores.firstWhere((store) => store.id == storeId);
    final product = dummyProducts.first; // Assuming one product per store for now

    return Scaffold(
      appBar: AppBar(
        title: Text(store.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Store Header
            Stack(
              children: [
                Image.network(
                  store.imageUrl,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: Colors.black54,
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          store.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: List.generate(
                            5,
                            (index) => Icon(
                              index < store.rating.floor()
                                  ? Icons.star
                                  : Icons.star_border,
                              color: Colors.yellow,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Surprise Bag Details
            Card(
              margin: const EdgeInsets.all(16.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(product.description),
                    const SizedBox(height: 16),
                    ListTile(
                      leading: const Icon(Icons.shopping_bag_outlined),
                      title: Text(
                        'Price: \$${product.price.toStringAsFixed(2)}',
                      ),
                    ),
                    const ListTile(
                      leading: Icon(Icons.access_time),
                      title: Text('Pickup: 5:00 PM - 7:00 PM'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            // TODO: Implement add to cart functionality
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          child: const Text(
            'Add to Cart',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
