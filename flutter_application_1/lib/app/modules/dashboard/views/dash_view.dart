import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/Login/views/Login1_view.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigasi ke halaman berikutnya saat layar diklik
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Login()), // Ganti MenuPage dengan halaman tujuan
        );
      },
      child: Column(
        children: [
          Container(
            width: 430,
            height: 932,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Color(0xFFF4F4F4)),
            child: Stack(
              children: [
                Center(
                  // Menyusun konten ke tengah
                  child: Container(
                    height: 118,
                    decoration: BoxDecoration(color: Color(0xFFFDF5F3)),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Uswah Shop Title
                        Container(
                          width: 285,
                          height: 74,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 21,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Uswah',
                                        style: TextStyle(
                                          color: Color(0xFF333333),
                                          fontSize: 50,
                                          fontFamily: 'Concert One',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'shop',
                                        style: TextStyle(
                                          color: Color(0xFF333333),
                                          fontSize: 50,
                                          fontFamily: 'Concert One',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Tagline
                        Text(
                          'EASY, SAFE, RELIABLE',
                          style: TextStyle(
                            color: Color(0xFFD85534),
                            fontSize: 18,
                            fontFamily: 'Source Sans 3',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Status Bar
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 428,
                    height: 44,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 23,
                          top: 11,
                          child: Text(
                            '9:41',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                        // Add icons for Signal, Wi-Fi, and Battery
                        Positioned(
                          right: 20,
                          top: 10,
                          child: Row(
                            children: [
                              Icon(Icons.signal_cellular_alt, size: 18, color: Colors.black),
                              SizedBox(width: 8),
                              Icon(Icons.wifi, size: 18, color: Colors.black),
                              SizedBox(width: 8),
                              Icon(Icons.battery_full, size: 18, color: Colors.black),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Bottom Bar
                Positioned(
                  left: 0,
                  top: 892,
                  child: Container(
                    width: 428,
                    height: 34,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 147,
                          top: 20,
                          child: Container(
                            width: 134,
                            height: 5,
                            decoration: ShapeDecoration(
                              color: Color(0xFF424242),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}