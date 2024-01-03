import 'package:flutter/material.dart';

import 'homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            //logo
            Padding(
              padding: EdgeInsets.all(25),
              child: Image.asset(
                'lib/images/nike_logo.png',
                height: 240,
              ),
            ),

            const SizedBox(height: 48),

            //title
            const Text(
              'Just Do it',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            ),

            const SizedBox(height: 48),
            //sub title
            const Text(
              'Brand new sneaker and custom kicks made with premium materials',
              style: TextStyle(fontSize: 30, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 48),
            // start now button
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomePage(
                            selectedIndex: 0,
                          ))),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(25),
                child: Center(
                  child: const Text(
                    "Shop Now",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
