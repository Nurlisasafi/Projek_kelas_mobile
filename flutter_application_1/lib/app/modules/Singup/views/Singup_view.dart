import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 430,
          height: 932,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFF4F4F4)),
          child: Stack(
            children: [
              // Other widgets...

              // Positioned for "Don't have an Account? Sign Up"
              Positioned(
                left: 112,
                top: 831,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Don’t have an Account? ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w400,
                          height: 0.10,
                          letterSpacing: 0.20,
                        ),
                      ),
                      WidgetSpan(
                        child: GestureDetector(
                          onTap: () {
                            // Navigate to the signup screen
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignupScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Color(0xFF3887FF),
                              fontSize: 14,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w700,
                              height: 0.10,
                              letterSpacing: 0.20,
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
    );
  }
}

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up Screen'),
      ),
      body: Center(
        child: Text('This is the Sign Up screen'),
      ),
    );
  }
}