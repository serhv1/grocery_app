import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // logo
          Padding(
            padding: const EdgeInsets.only(
                left: 80, right: 80, bottom: 80, top: 180),
            child: Image.asset('lib/images/avocado.png'),
          ),
          // we deliver groceries at your doorstep
          Padding(
            padding: const EdgeInsets.all(24),
            child: Text(
              'We deliver groceries at your doorstep',
              textAlign: TextAlign.center,
              style: GoogleFonts.alegreyaSansSc(
                fontSize: 42,
                fontWeight: FontWeight.bold,
              ),
            ),
            // subtitle
          ),

          // const SizedBox(height: 20),

          Text(
            'Fresh items everyday',
            style: TextStyle(color: Colors.grey[600]),
          ),

          const Spacer(),
          // get started button
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return const HomePage();
              },
            )),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.purple,
              ),
              padding: const EdgeInsets.all(26),
              child: const Text(
                'Get started',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
