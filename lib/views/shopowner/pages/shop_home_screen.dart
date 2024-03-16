import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerece/utils/theme_data.dart';
import 'package:flutter/material.dart';

class ShopHomeScreen extends StatefulWidget {
  const ShopHomeScreen({super.key});

  @override
  State<ShopHomeScreen> createState() => _ShopHomeScreenState();
}

class _ShopHomeScreenState extends State<ShopHomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black38,
      body: SizedBox(
        height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.3,
                width: width,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              SizedBox(
                height: height * 0.25,
                width: width,
                child: Stack(
                  children: [
                    Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: CarouselSlider(
                          items: [
                            Container(
                              height: height,
                              width: width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("images/slider1.jpg"))),
                            ),
                            Container(
                              height: height,
                              width: width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("images/slider2.jpg"))),
                            ),
                            Container(
                              height: height,
                              width: width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("images/slider3.jpg"))),
                            ),
                          ],
                          options: CarouselOptions(
                            height: 400,
                            aspectRatio: 16 / 9,
                            viewportFraction: 1,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            enlargeFactor: 0.3,
                            onPageChanged: (index, reason) {},
                            scrollDirection: Axis.horizontal,
                          )),
                    ),
                    Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration(
                          color: MyThemeClass.primaryColor.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Expanded(
                child: SizedBox(
                  height: height,
                  width: width,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: height,
                          width: width,
                          decoration: BoxDecoration(
                              color: MyThemeClass.primaryColor,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Expanded(
                        child: Container(
                          height: height,
                          width: width,
                          decoration: BoxDecoration(
                              color: MyThemeClass.primaryColor,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Expanded(
                child: SizedBox(
                  height: height,
                  width: width,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: height,
                          width: width,
                          decoration: BoxDecoration(
                              color: MyThemeClass.primaryColor,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Expanded(
                        child: Container(
                          height: height,
                          width: width,
                          decoration: BoxDecoration(
                              color: MyThemeClass.primaryColor,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
