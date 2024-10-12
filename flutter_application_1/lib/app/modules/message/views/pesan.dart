import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/Beranda/views/beranda_view.dart';
import 'package:flutter_application_1/app/modules/MyOrder/views/Order.dart';
import 'package:flutter_application_1/app/modules/favorite/views/Favorite.dart';

class MessageScreen extends StatefulWidget {
  @override
  Pesan createState() => Pesan();
}

class Pesan extends State<MessageScreen> {
  int _selectedIndex = 2; // Default ke menu Message

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigasi ke halaman berdasarkan indeks
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Beranda()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FavoriteScreen()),
        );
        break;
      case 2:
          //Akan tetap di menu pesan
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
        title: Text('Message'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: List.generate(8, (index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text('User ${index + 1}'),
            subtitle: Text('This is a message preview...'),
            trailing: Text('18:30'),
            onTap: () {
              // Aksi jika pesan diklik
            },
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Aksi ketika tombol tambah ditekan
        },
        child: Icon(Icons.add),
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
}