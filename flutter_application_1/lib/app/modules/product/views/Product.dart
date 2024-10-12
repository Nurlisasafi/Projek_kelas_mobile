import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/checout/views/Checkout.dart';
import 'package:flutter_application_1/app/modules/keranjang/views/keranjang_view.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
                '../../../../assets/images/sneakers.png'
                ,), // Replace with actual image URL
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nike Air VaporMax Evo',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 20),
                      SizedBox(width: 4),
                      Text('4.8', style: TextStyle(fontSize: 16)),
                      SizedBox(width: 8),
                      Text('1000 reviews', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.thumb_up, color: Colors.green, size: 20),
                      SizedBox(width: 4),
                      Text('300 Likes', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Rp. 150.000',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  Text(
                    'Rp. 300.000',
                    style: TextStyle(
                      fontSize: 18,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Lorem ipsum description about the product...',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CheckoutPage()),
                            );
                          },
                          child: Text('Buy Now'),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Keranjang()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink), // Customize button color
                          child: Text('Add to Cart'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}