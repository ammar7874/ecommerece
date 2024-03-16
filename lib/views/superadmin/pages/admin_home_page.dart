import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerece/models/admin_models/shop_model.dart';
import 'package:ecommerece/models/user_models/user_signup_model.dart';
import 'package:ecommerece/utils/theme_data.dart';
import 'package:flutter/material.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({super.key});

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  var height, width;

  get callbackFunction => null;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: MyThemeClass.primaryColor,
      body: SizedBox(
        height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.09,
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: height,
                      width: width * 0.3,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Abdul Haseeb Tabassum",
                        style: TextStyle(
                            color: Colors.white, fontSize: width * 0.01),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Container(
                        height: height,
                        width: width * 0.1,
                        decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.center,
                        child: Text(
                          "Logout",
                          style: TextStyle(
                              color: Colors.white, fontSize: width * 0.01),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.white,
                thickness: 1,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              SizedBox(
                height: height * 0.35,
                width: width,
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: height,
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
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  "images/slider1.jpg"))),
                                    ),
                                    Container(
                                      height: height,
                                      width: width,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  "images/slider2.jpg"))),
                                    ),
                                    Container(
                                      height: height,
                                      width: width,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  "images/slider3.jpg"))),
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
                                    autoPlayInterval:
                                        const Duration(seconds: 3),
                                    autoPlayAnimationDuration:
                                        const Duration(milliseconds: 800),
                                    autoPlayCurve: Curves.fastOutSlowIn,
                                    enlargeCenterPage: true,
                                    enlargeFactor: 0.3,
                                    onPageChanged: callbackFunction,
                                    scrollDirection: Axis.horizontal,
                                  )),
                            ),
                            Container(
                              height: height,
                              width: width,
                              decoration: BoxDecoration(
                                  color: MyThemeClass.primaryColor
                                      .withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(20)),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.005,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: height,
                        width: width,
                        child: Column(
                          children: [
                            Container(
                              height: height * 0.05,
                              width: width,
                              alignment: Alignment.center,
                              child: Text(
                                "All Stores",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.01),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Expanded(
                              child: StreamBuilder<QuerySnapshot>(
                                  stream: FirebaseFirestore.instance
                                      .collection('Stores')
                                      .snapshots(),
                                  builder: (context,
                                      AsyncSnapshot<QuerySnapshot> snapshot) {
                                    return SizedBox(
                                      height: height,
                                      width: width,
                                      child: !snapshot.hasData
                                          ? const Center(
                                              child: Text("No Record Found"))
                                          : ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount:
                                                  snapshot.data!.docs.length,
                                              itemBuilder: (context, index) {
                                                ShopModel model =
                                                    ShopModel.fromMap(snapshot
                                                            .data!.docs[index]
                                                            .data()
                                                        as Map<String,
                                                            dynamic>);
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: height,
                                                    width: width * 0.15,
                                                    decoration: BoxDecoration(
                                                        color: Colors.black38,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        border: Border.all(
                                                            color:
                                                                Colors.grey)),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            height:
                                                                height * 0.15,
                                                            width: width,
                                                            decoration: BoxDecoration(
                                                                image: DecorationImage(
                                                                    fit: BoxFit
                                                                        .cover,
                                                                    image: NetworkImage(
                                                                        model
                                                                            .image!)),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20)),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width: width,
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Row(
                                                                children: [
                                                                  const Icon(
                                                                    Icons
                                                                        .person,
                                                                    color: Colors
                                                                        .white,
                                                                    size: 13,
                                                                  ),
                                                                  SizedBox(
                                                                    width:
                                                                        width *
                                                                            0.01,
                                                                  ),
                                                                  Text(
                                                                    model.name!,
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            width *
                                                                                0.01),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width: width,
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Row(
                                                                children: [
                                                                  const Icon(
                                                                    Icons.email,
                                                                    color: Colors
                                                                        .white,
                                                                    size: 13,
                                                                  ),
                                                                  SizedBox(
                                                                    width:
                                                                        width *
                                                                            0.01,
                                                                  ),
                                                                  Text(
                                                                    model
                                                                        .gmail!,
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            width *
                                                                                0.01),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              height:
                                                                  height * 0.05,
                                                              width: width,
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Row(
                                                                children: [
                                                                  const Icon(
                                                                    Icons
                                                                        .location_city,
                                                                    color: Colors
                                                                        .white,
                                                                    size: 13,
                                                                  ),
                                                                  SizedBox(
                                                                    width:
                                                                        width *
                                                                            0.01,
                                                                  ),
                                                                  Text(
                                                                    model
                                                                        .storename!,
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            width *
                                                                                0.01),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                    );
                                  }),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Expanded(
                child: Container(
                  height: height,
                  width: width,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: height,
                          width: width,
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Expanded(
                        child: Container(
                          height: height,
                          width: width,
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Container(
                                height: height * 0.05,
                                width: width,
                                alignment: Alignment.center,
                                child: Text(
                                  "All Users",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.01),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Expanded(
                                child: StreamBuilder<QuerySnapshot>(
                                    stream: FirebaseFirestore.instance
                                        .collection('Users')
                                        .snapshots(),
                                    builder: (context,
                                        AsyncSnapshot<QuerySnapshot> snapshot) {
                                      return SizedBox(
                                        height: height,
                                        width: width,
                                        child: !snapshot.hasData
                                            ? const Center(
                                                child: Text("No Record Found"))
                                            : ListView.builder(
                                                itemCount:
                                                    snapshot.data!.docs.length,
                                                itemBuilder: (context, index) {
                                                  UserModel model =
                                                      UserModel.fromMap(snapshot
                                                              .data!.docs[index]
                                                              .data()
                                                          as Map<String,
                                                              dynamic>);
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Container(
                                                      height: height * 0.07,
                                                      width: width,
                                                      decoration: BoxDecoration(
                                                          color: MyThemeClass
                                                              .primaryColor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          border: Border.all(
                                                              color:
                                                                  Colors.grey)),
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            height: height,
                                                            width: width * 0.04,
                                                            decoration:
                                                                BoxDecoration(
                                                              image: DecorationImage(
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  image: NetworkImage(
                                                                      model
                                                                          .image!)),
                                                              color: Colors
                                                                  .black38,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              height: height,
                                                              width: width,
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Text(
                                                                model.name!,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        width *
                                                                            0.009,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              height: height,
                                                              width: width,
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Text(
                                                                model.email!,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        width *
                                                                            0.009,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            height:
                                                                height * 0.02,
                                                            width: width * 0.04,
                                                            decoration:
                                                                const BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                    color: Colors
                                                                        .green),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                      );
                                    }),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Expanded(
                        child: Container(
                          height: height,
                          width: width,
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Container(
                                height: height * 0.05,
                                width: width,
                                alignment: Alignment.center,
                                child: Text(
                                  "All Orders",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.01),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: height,
                                  width: width,
                                  child: ListView.builder(
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: height * 0.07,
                                          width: width,
                                          decoration: BoxDecoration(
                                              color: MyThemeClass.primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: Colors.grey)),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
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
