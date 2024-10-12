import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/MyOrder/views/Order.dart';
import 'package:flutter_application_1/app/modules/favorite/views/Favorite.dart';
import 'package:flutter_application_1/app/modules/message/views/pesan.dart';
import 'package:flutter_application_1/app/modules/product/views/Product.dart';

// Buat halaman dummy untuk Home, Favorite, Message, dan Order
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Text('Welcome to Home Page'),
      ),
    );
  }
}

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite Page"),
      ),
      body: Center(
        child: Text('Welcome to Favorite Page'),
      ),
    );
  }
}

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Message Page"),
      ),
      body: Center(
        child: Text('Welcome to Message Page'),
      ),
    );
  }
}

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Page"),
      ),
      body: Center(
        child: Text('Welcome to Order Page'),
      ),
    );
  }
}

class Beranda extends StatefulWidget {
  @override
  BerandaView createState() => BerandaView();
}

class BerandaView extends State<Beranda> {
  int _currentIndex = 0;  // Untuk melacak tab yang sedang dipilih

  // Fungsi untuk berpindah ke halaman lain
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    switch (index) {
      case 0:
        // Ketika tab "Home" dipilih
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Beranda()),
        );
        break;
      case 1:
        // Ketika tab "Favorite" dipilih
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FavoriteScreen()),
        );
        break;
      case 2:
        // Ketika tab "Message" dipilih
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MessageScreen()),
        );
        break;
      case 3:
        // Ketika tab "Order" dipilih
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => OrderScreen()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi, Hanwaulat"),
        actions: [
          IconButton(
            icon: Icon(Icons.local_offer),
            onPressed: () {
              // Add promo button functionality
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            
            // Popular Item Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Popular Item',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PromoCard(
                  color: Colors.orange,
                  text: 'Get your special sale up to 30%',
                ),
                PromoCard(
                  color: Colors.green,
                  text: 'Get your special sale up to 20%',
                ),
              ],
            ),
            
            // Categories Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CategoryCard(icon: Icons.directions_run, label: 'Shoes'),
                CategoryCard(icon: Icons.smartphone, label: 'Smartphone'),
                CategoryCard(icon: Icons.perm_media, label: 'Perfume'),
              ],
            ),
            
            // Flash Sale Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Flash Sale',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FlashSaleCard(
                  imagePath: '../../../../assets/images/iphone.png',
                  title: 'Apple iPhone 15 Pro',
                  price: 'Rp. 12.000.000',
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductPage(),
                      ),
                    );
                  },
                  child: FlashSaleCard(
                    imagePath: '../../../../assets/images/sneakers.png',
                    title: 'Sneakers',
                    price: 'Rp. 12.000.000',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Set current index untuk highlight item yang aktif
        onTap: _onTabTapped,         // Fungsi yang dipanggil saat ikon diklik
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Order',
          ),
        ],
      ),
    );
  }
}

class PromoCard extends StatelessWidget {
  final Color color;
  final String text;

  PromoCard({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 14),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String label;

  CategoryCard({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 50),
        Text(label),
      ],
    );
  }
}

class FlashSaleCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;

  FlashSaleCard({
    required this.imagePath,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imagePath, height: 100),
        Text(title),
        Text(price, style: TextStyle(color: Colors.red)),
      ],
    );
  }
}
