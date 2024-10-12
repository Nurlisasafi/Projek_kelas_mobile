import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/CheckoutSucces/views/Success.dart';

class CheckoutPage2 extends StatelessWidget {
  const CheckoutPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView( // Scroll agar bisa bergulir
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              // Icon langkah-langkah checkout (bisa menggunakan Icon atau gambar)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(Icons.location_on),
                  Icon(Icons.arrow_forward),
                  Icon(Icons.credit_card),
                  Icon(Icons.arrow_forward),
                  Icon(Icons.check_circle_outline),
                ],
              ),
              const SizedBox(height: 30),
              
              const Text(
                'Payment Option',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              // Pilihan pembayaran (Mastercard, Visa, COD)
              PaymentOptionCard(
                icon: Icons.payment,
                cardText: '1425 2465 3654 3747',
                label: 'Mastercard',
              ),
              const SizedBox(height: 10),
              PaymentOptionCard(
                icon: Icons.payment,
                cardText: '1425 2465 3654 3747',
                label: 'VISA',
              ),
              const SizedBox(height: 10),
              PaymentOptionCard(
                icon: Icons.local_shipping,
                cardText: 'Cash on Delivery',
                label: 'COD',
              ),
              const SizedBox(height: 20),
              
              // Input kode promo
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Promo Code',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi untuk menambahkan promo code
                    },
                    child: const Text('Apply'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              
              // Rincian harga
              const PriceDetails(label: 'Sub-Total', price: 'Rp. 12.000.000'),
              const PriceDetails(label: 'Sub-Total Delivery', price: 'Rp. 30.000'),
              const Divider(),
              const PriceDetails(label: 'TOTAL', price: 'Rp. 12.030.000', isTotal: true),
              const SizedBox(height: 30),
              
              // Tombol Checkout
              ElevatedButton(
                onPressed: () {
                Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Success()),
                            );
                },
                child: const Text('Checkout'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  textStyle: const TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentOptionCard extends StatelessWidget {
  final IconData icon;
  final String cardText;
  final String label;

  const PaymentOptionCard({
    Key? key,
    required this.icon,
    required this.cardText,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: Icon(icon, color: Colors.orange),
        title: Text(cardText),
        subtitle: Text(label),
        trailing: TextButton(
          onPressed: () {
            // Aksi untuk mengubah metode pembayaran
          },
          child: const Text('Change'),
        ),
      ),
    );
  }
}

class PriceDetails extends StatelessWidget {
  final String label;
  final String price;
  final bool isTotal;

  const PriceDetails({
    Key? key,
    required this.label,
    required this.price,
    this.isTotal = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: isTotal ? 18 : 16,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            price,
            style: TextStyle(
              fontSize: isTotal ? 18 : 16,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}