import '../Data/data_19552011177.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Produk produk;
  const DetailPage(this.produk, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        shape: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
        leading: Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Color(produk.color!),
              width: 1,
            ),
          ),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Color(produk.color!),
            ),
          ),
        ),
        title: Image.asset(
          'images/banner.png',
          width: 150,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                produk.image!,
                width: MediaQuery.of(context).size.width / 1.5,
              ),
            ),
            const SizedBox(height: 30),
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: 'Instax ',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: produk.cameraName!,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(
                        produk.color!,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Be real and fun with the INSTAX MINI 7+ Cool design, colorful and compact, this instant camera is fun and esay to use. Point and shoot and girve your day some fun!',
              style: TextStyle(),
            ),
            const SizedBox(height: 8),
            const Text(
              'Point & Shoot',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'The Mini 7+ is esay to use! Simply point and shoot! With its exposure control adjustment and 60mm fixed focus lens, the Mini 7+ makes it esay for you to be creative and live in the moment.',
            ),
            const SizedBox(height: 8),
            const Text(
              'Mini But With Full-Size Memories',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Pop it in your wallet, stick it to your wall-the INSTAX Mini film brings you instant 2 x 3 sized photos you can show and tell.\n\nUsing professional hight-quality film technology (as you\'d expect from m Fujifilm), your festival frolicking, sun worshipping, crowd surfing memories that you print will transport you right back into that moment.',
            ),
            const SizedBox(height: 8),
            const Text(
              'Mini Film',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Mini moments with maximum impact. What’s your next mini moment?',
            ),
            const SizedBox(height: 8),
            const Text(
              'Plenty of Great Color Choices',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Available in five awesome colors: Lavender, Seafoam Green, Coral, Light Pink & Light Blue',
            ),
            const SizedBox(height: 8),
            const Text(
              'The Mini 7+ Has Your Back!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Depending upon the weather conditions, you can easily control brightness to obtain a great picture',
            ),
            const SizedBox(height: 8),
            const Text(
              'Fun All The Time!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Live in the moment and enjoy your Mini 7+, and give your day some instant fun!',
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(15),
        height: 90,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.black,
              width: 1,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$ ${produk.price!.toStringAsFixed(1)}',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(produk.color!),
                padding: const EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 0,
              ),
              onPressed: () {},
              child: const Text(
                'Buy Now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
