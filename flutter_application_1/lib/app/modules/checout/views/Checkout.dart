import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/Checkot2/views/Checkout2.dart';

class CheckoutPage extends StatefulWidget {
  @override
  Checkout createState() => Checkout();
}

class Checkout extends State<CheckoutPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Billing address',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nama Lengkap',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Alamat',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Provinsi',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Kode Pos',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Negara',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Opsi Pengiriman',
                  border: OutlineInputBorder(),
                ),
                items: [
                  DropdownMenuItem(
                    child: Text('Pengiriman Standar (+ Rp. 12.000)'),
                    value: 'standard',
                  ),
                  DropdownMenuItem(
                    child: Text('Pengiriman Express (+ Rp. 25.000)'),
                    value: 'express',
                  ),
                ],
                onChanged: (value) {},
              ),
              SizedBox(height: 16),
              CheckboxListTile(
                value: true,
                onChanged: (bool? value) {},
                title: Text(
                    'Simpan detail untuk alamat pengiriman di masa mendatang'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
               Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CheckoutPage2()),
                            );
                },
                child: Text('Lanjutkan ke pembayaran'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50), // Full-width button
                  backgroundColor: Colors.pink, // Custom color for button
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}