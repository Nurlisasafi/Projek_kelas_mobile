import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/Beranda/views/beranda_view.dart';
import 'package:flutter_application_1/app/modules/favorite/views/Favorite.dart';
import 'package:flutter_application_1/app/modules/message/views/pesan.dart';


class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> with SingleTickerProviderStateMixin {
  int _selectedIndex = 3; // Default di menu Order
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Beranda()));
        break;
      case 1:
        Navigator.push(context, MaterialPageRoute(builder: (context) => FavoriteScreen()));
        break;
      case 2:
        Navigator.push(context, MaterialPageRoute(builder: (context) => MessageScreen()));
        break;
      case 3:
        // Tetap di halaman Order
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Previous'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.red,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          tabs: const [
            Tab(text: 'Current'),
            Tab(text: 'Previous'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Text('No Current Orders')),
          ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              _buildOrderItem(
                imageUrl: '../../../../assets/images/iphone.png',
                title: 'Apple Iphone 15 Pro 128GB Natural Black',
                price: 'Rp. 12.000.000',
                status: 'Completed',
                date: 'Sun, October 22, at 16:10',
                statusColor: Colors.green,
              ),
              SizedBox(height: 16.0),
              _buildOrderItem(
                imageUrl: '../../../../assets/images/iphone.png',
                title: 'Apple Iphone 15 Pro 128GB Natural Black',
                price: 'Rp. 12.000.000',
                status: 'Canceled',
                date: 'Sun, October 22, at 16:10',
                statusColor: Colors.red,
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Order'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildOrderItem({
    required String imageUrl,
    required String title,
    required String price,
    required String status,
    required String date,
    required Color statusColor,
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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8.0),
                Text(
                  price,
                  style: TextStyle(color: Colors.red, fontSize: 14.0),
                ),
                SizedBox(height: 8.0),
                Text(
                  date,
                  style: TextStyle(color: Colors.grey, fontSize: 12.0),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                status,
                style: TextStyle(color: statusColor, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol detail ditekan
                },
                child: Text('DETAILS'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}