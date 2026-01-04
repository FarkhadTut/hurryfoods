import 'package:flutter/material.dart';

class StoreDetailsScreen extends StatelessWidget {
  final String storeId;
  const StoreDetailsScreen({super.key, required this.storeId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Store Details'),
      ),
      body: const Center(
        child: Text('Store Details Screen'),
      ),
    );
  }
}
