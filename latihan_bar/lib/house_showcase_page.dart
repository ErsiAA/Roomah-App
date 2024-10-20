import 'package:flutter/material.dart';

class HouseShowCasePage extends StatelessWidget {
  const HouseShowCasePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          width: width,
                          height: height * 0.5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              'assets/images/house_2.jpg',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          left: 20,
                          right: 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
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
                                      spreadRadius: 1,
                                      blurRadius: 5,
                                      offset: Offset(
                                          2, 3), // mengatur posisi bayangan
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
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Icon(
                                  Icons.favorite_outline,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 20,
                          right: 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 13,
                                height: 13,
                                margin: const EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  border: Border.all(
                                    color: Colors.grey[300]!,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                width: 10,
                                height: 10,
                                margin: const EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                width: 10,
                                height: 10,
                                margin: const EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                width: 10,
                                height: 10,
                                margin: const EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                width: 10,
                                height: 10,
                                margin: const EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Perumahan Anjayo',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 27,
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
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: width * 0.04),
                              padding: EdgeInsets.symmetric(
                                horizontal: width * 0.05,
                                vertical: height * 0.01,
                              ),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 232, 232, 232),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.bed_outlined,
                                    size: 28,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '3 Beds',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: width * 0.04),
                              padding: EdgeInsets.symmetric(
                                horizontal: width * 0.05,
                                vertical: height * 0.01,
                              ),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 232, 232, 232),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.bathtub_outlined,
                                    size: 28,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '2 Baths',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: width * 0.04),
                              padding: EdgeInsets.symmetric(
                                horizontal: width * 0.05,
                                vertical: height * 0.01,
                              ),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 232, 232, 232),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.zoom_out_map_outlined,
                                    size: 28,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '240 m²',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: height * 0.12,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                      width: width,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Details',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Rumah ini merupakan pilihan ideal bagi Anda yang mencari hunian nyaman dengan fasilitas lengkap di lokasi strategis. \nDengan harga yang kompetitif dan berbagai keunggulan yang ditawarkan, jangan lewatkan kesempatan ini untuk memiliki rumah impian Anda di Perumahan Anjayo. \nSegera hubungi kami untuk informasi lebih lanjut dan jadwalkan kunjungan Anda!',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 15,
                right: 15,
                child: Container(
                  width: width,
                  height: height * 0.12,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 232, 232, 232),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Container(
                        height: height * 0.068,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Icon(
                          Icons.mail_outline,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Expanded(
                        child: Container(
                          height: height * 0.068,
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 37, 37, 37),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                            child: Text(
                              'Pesan Langsung',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
