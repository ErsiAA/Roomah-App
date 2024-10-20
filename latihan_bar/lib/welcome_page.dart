import 'package:flutter/material.dart';
import 'package:latihan_bar/home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/images/house_1.jpg',
                      fit: BoxFit.fitWidth,
                      width: width,
                      height: height * 0.55,
                    ),
                  ),
                ),
                const Positioned(
                  top: 30,
                  left: 30,
                  right: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 40,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Roomah',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.035,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Jelajahi Rumah Impian dari Genggaman Tangan',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                'App Pencarian Rumah Nomor 1',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black45,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: height * 0.045,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: width * 0.2,
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(
                  child: Text(
                    'Masuk',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Belum memiliki akun?",
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Daftar',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
