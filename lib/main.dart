import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buatKotak('assets/images/images1.jpg', 'Image 1'),
                buatKotak('assets/images/images2.jpg', 'Image 2'),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buatKotak('assets/images/images3.png', 'Image 3'),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    buatKotak('assets/images/images4.jpg', 'Image 4'),
                    buatKotak('assets/images/images5.jpg', 'Image 5'),
                    buatKotak('assets/images/images6.png', 'Image 6'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  ));
}

Widget buatKotak(String imagePath, String imageName) {
  return GestureDetector(
    onTap: () {
      print('Tapped on $imageName');
    },
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          height: 100,
          width: 100,
          margin: const EdgeInsets.all(10),
        ),
        Text(imageName),
      ],
    ),
  );
}