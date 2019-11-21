import 'package:flutter/material.dart';

class PageSplash extends StatefulWidget {
  @override
  _PageSplashState createState() => _PageSplashState();
}

class _PageSplashState extends State<PageSplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: Center(
          child: Text(
            'DLX',
            style: TextStyle(
              color: Colors.amber,
              fontSize: 80,
            ),
          ),
        ),
      ),
    );
  }
}
