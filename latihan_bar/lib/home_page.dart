import 'dart:math';

import 'package:flutter/material.dart';
import 'package:latihan_bar/house_showcase_page.dart';
import 'package:latihan_bar/widgets/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 232, 232, 232),
              borderRadius: BorderRadius.circular(30),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.065,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.menu,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Lokasi Terkini',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black38,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.blue[700],
                                size: 16,
                              ),
                              const Text(
                                'Gabek 2, Pangkalpinang',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.tune,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.search,
                          color: Colors.black38,
                          size: 28,
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration.collapsed(
                              hintText: 'Cari rumah impian mu',
                              hintStyle: TextStyle(
                                color: Colors.black26,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Container(
                    width: width,
                    height: height * 0.15,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/house_5.jpg'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'DAPATKAN 10% \nCASHBACK',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                offset: Offset(3.0, 3.0),
                                blurRadius: 5.0,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Berakhir dalam 30 hari',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HouseShowCasePage(),
                        ),
                      );
                    },
                    child: Container(
                      width: width,
                      margin: EdgeInsets.only(top: height * 0.03),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              SizedBox(
                                height: height * 0.15,
                                width: width,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/images/house_4.jpg',
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 15,
                                left: 15,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: Offset(
                                            3, 3), // mengatur posisi bayangan
                                      ),
                                    ],
                                  ),
                                  child: RichText(
                                    text: const TextSpan(
                                      text: 'Rp. 18,5 Juta',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: '/bulan',
                                          style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Perumahan Anjayo',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.black38,
                                        size: 18,
                                      ),
                                      Text(
                                        'Kampak, Pangkalpinang',
                                        style: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black12,
                                    width: 1,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                child: Transform.rotate(
                                  angle: pi / -4,
                                  child: const Icon(
                                    Icons.arrow_downward_outlined,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 20,
            right: 0,
            left: 0,
            child: BottomNavBarCustom(),
          )
        ],
      ),
    );
  }
}
