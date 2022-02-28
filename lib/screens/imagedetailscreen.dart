import 'package:carousel_slider/carousel_slider.dart';
import 'package:cosnapper/utils/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class ImageDetailScreen extends StatefulWidget {


  @override
  State<ImageDetailScreen> createState() => _ImageDetailScreenState();
}

class _ImageDetailScreenState extends State<ImageDetailScreen> {
  final List<String> imgList = [
    'assets/images/women.png',
    'assets/images/women.png',
    'assets/images/women.png',
    'assets/images/women.png'
  ];
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        // ignore: prefer_const_constructors
        centerTitle: true,
        title: const Text(
          AppString.textone_h,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColor.blueColor,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColor.appbarColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: AppColor.blueIconColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
              onPressed: () {
               
              },
              icon: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.shoppingcart),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                child: CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                height: 500,
                //aspectRatio: 16/9
                aspectRatio: 1.0,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
              items: imgList
                  .map((item) => Center(
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child: const Padding(
                              child: Image(
                                image: AssetImage(AppAssets.women),
                                fit: BoxFit.cover,
                                width: 1000,
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 0.0),
                            ),
                          )))
                  .toList(),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 8.0,
                    height: 8.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : AppColor.blueColor)
                            .withOpacity(_current == entry.key ? 0.9 : 0.1)),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              AppString.textone_i,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.0,
                  color: AppColor.blueColor),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 85.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: AppColor.whiteColor,
                        side: BorderSide(
                          width: 1.0,
                          color: AppColor.blackColor.withOpacity(0.5),
                        )),
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => const HomeScreen()));
                    },
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                child: const Text(
                                  AppString.texttwo_i,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16.0,
                                      color: AppColor.blueColor),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                child: const Text(
                                  AppString.textthree_i,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      color: AppColor.blueColor),
                                ),
                              ),
                            ),
                            Container(
                              child: IconButton(
                                onPressed: () {},
                                icon: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(AppAssets.shoppingcart),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              AppString.textfour_i,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.0,
                color: AppColor.blackColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(primary: AppColor.blueColor),
                    onPressed: () {
                      //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreen()));
                    },
                    child: const Text(
                      AppString.texttwo_h,
                      style: TextStyle(
                          fontSize: 16,
                          //fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          color: AppColor.whiteColor),
                    )),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
