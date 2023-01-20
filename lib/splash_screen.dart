// ignore_for_file: must_be_immutable

import 'dart:async';

import 'package:attendance/web_view_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Timer(Duration(milliseconds: 1200), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => WebViewScreen(),
      ));
    });
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              color: Color.fromARGB(255, 132, 228, 212),
            ),
            Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(size.height * 0.20),
                  topRight: Radius.circular(size.height * 0.20),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: size.width * 0.40,
                          child: Image.asset(
                            'assets/app_logo.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(bottom: 12.0, right: 12.0),
                    child: Text(
                      "eAppair Limited",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
