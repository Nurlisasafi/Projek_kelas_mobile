import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/checout/views/Checkout.dart';

class Keranjang extends StatelessWidget {
  final List<Map<String, String>> cartItems = [
    {
      'name': 'Adidas Yung White',
      'size': '36 37 38 39',
      'color': 'Black',
      'image': 'https://example.com/adidas.jpg' // Replace with a valid image URL
    },
    {
      'name': 'Apple iPhone 15 Pro 128GB',
      'size': '6.7 inch',
      'color': 'Black',
      'image': 'https://example.com/iphone.jpg' // Replace with a valid image URL
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Charts'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return CartItemWidget(
                  name: cartItems[index]['name']!,
                  size: cartItems[index]['size']!,
                  color: cartItems[index]['color']!,
                  imageUrl: cartItems[index]['image']!,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 48.0),
                textStyle: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                // Navigate to another menu
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CheckoutPage()),
                );
              },
              child: Text('Buy Now'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
        ],
        selectedItemColor: Colors.pink,
      ),
    );
  }
}

class CartItemWidget extends StatelessWidget {
  final String name;
  final String size;
  final String color;
  final String imageUrl;

  CartItemWidget({
    required this.name,
    required this.size,
    required this.color,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Image.network(
              imageUrl,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 6),
                  Text('Size: $size', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 4),
                  Text('Color: $color', style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.remove_circle_outline),
                  onPressed: () {
                    // Remove item action
                  },
                ),
                IconButton(
                  icon: Icon(Icons.add_circle_outline),
                  onPressed: () {
                    // Add item action
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}