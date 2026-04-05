import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CakeShopListUi extends StatefulWidget {
  const CakeShopListUi({super.key});

  @override
  State<CakeShopListUi> createState() => _CakeShopListUiState();
}

class _CakeShopListUiState extends State<CakeShopListUi> {
  List<String> imgShopLogo = [
    'assets/images/ck01.png',
    'assets/images/ck02.png',
    'assets/images/ck03.png',
    'assets/images/ck04.png',
    'assets/images/ck05.png',
    'assets/images/ck06.png',
    'assets/images/ck07.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'สายด่วนกินเค้ก',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      //ส่วนของ body
      body: Center(
        child: Column(
          children: [
            

            //ส่วนของslider
            CarouselSlider.builder(
              itemCount: imgShopLogo.length,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(imgShopLogo[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.3,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                ),
            ),

            //ส่วนของListView
          ],
        ),
      ),
    );
  }
}
