import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hurryfoods/data/dummy_data.dart'; // Import dummy data

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HurryFoods'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // TODO: Implement search functionality
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Search functionality coming soon!')),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          // Featured Surprise Bags
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Featured Surprise Bags',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          SizedBox(
            height: 200, // Adjust height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dummyProducts.length,
              itemBuilder: (context, index) {
                final product = dummyProducts[index];
                return GestureDetector(
                  onTap: () {
                    // TODO: Navigate to store details or product details
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Tapped on ${product.name}')),
                    );
                  },
                  child: Card(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox(
                      width: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image.network(
                              product.imageUrl,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              product.name,
                              style: Theme.of(context).textTheme.titleSmall,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              '\$${product.price.toStringAsFixed(2)}',
                              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
                            child: Text(
                              '\$${product.originalPrice.toStringAsFixed(2)}',
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          // Nearby Stores
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Nearby Stores',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          ListView.builder(
            shrinkWrap: true, // Important for nested list views
            physics: const NeverScrollableScrollPhysics(), // Disable scrolling for this list
            itemCount: dummyStores.length,
            itemBuilder: (context, index) {
              final store = dummyStores[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(store.imageUrl),
                  ),
                  title: Text(store.name),
                  subtitle: Text(store.address),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 16.0),
                      Text(store.rating.toStringAsFixed(1)),
                    ],
                  ),
                  onTap: () {
                    context.go('/store/${store.id}');
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}