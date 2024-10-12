import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/Beranda/views/beranda_view.dart';

class Success extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction Success'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100), // To add some top spacing
            Icon(
              Icons.check_circle_outline,
              size: 150,
              color: Colors.grey,
            ),
            SizedBox(height: 20),
            Text(
              'Transaction Success',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // background color
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
              ),
              onPressed: () {
                // Navigate to another screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Beranda()),
                );
              },
              child: Text(
                'Order Again?',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
