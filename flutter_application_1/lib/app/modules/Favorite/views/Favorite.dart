import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/Beranda/views/beranda_view.dart';
import 'package:flutter_application_1/app/modules/MyOrder/views/Order.dart';
import 'package:flutter_application_1/app/modules/message/views/pesan.dart';


class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  int _selectedIndex = 1; // Default ke menu Favorite

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Beranda()),
        );
        break;
      case 1:
        // Tetap di halaman Favorite
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MessageScreen()),
        );
        break;
      case 3:
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
        title: Text('Favorites'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildFavoriteItem(
            imageUrl: '../../../../assets/images/iphone.png',
            title: 'Apple Iphone 15 Pro 128GB Natural Black',
            price: 'Rp. 500.000',
            sold: '30 sold',
          ),
          SizedBox(height: 16.0),
          _buildFavoriteItem(
            imageUrl: '../../../../assets/images/iphone.png',
            title: 'Apple Iphone 15 Pro 128GB Natural Black',
            price: 'Rp. 500.000',
            sold: '30 sold',
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
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Order',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildFavoriteItem({
    required String imageUrl,
    required String title,
    required String price,
    required String sold,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(
              imageUrl,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8.0),
                Text(
                  price,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  sold,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.favorite, color: Colors.red),
            onPressed: () {
              // Aksi ketika tombol favorit ditekan
            },
          ),
        ],
      ),
    );
  }
}