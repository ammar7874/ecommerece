import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AdminProductPage extends StatefulWidget {
  const AdminProductPage({super.key});

  @override
  State<AdminProductPage> createState() => _AdminProductPageState();
}

class _AdminProductPageState extends State<AdminProductPage> {
  var height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.amber,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(children: [
              Container(
                height: height,
                width: width,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      height: height,
                      width: width * 0.68,
                      color: Colors.white,
                      child: Column(
                        children: [
                          //1
                          Row(
                            children: [
                              //1
                              Container(
                                height: height,
                                width: width * 0.33333,
                                color: Colors.white,
                                child: Center(
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: height * 0.7,
                                        width: width * 0.25,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "images/fds.jpg"),
                                                fit: BoxFit.cover)),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: width * 0.265,
                                            top: height * 0.03),
                                        child: Container(
                                          height: height * 0.05,
                                          width: width * 0.10,
                                          child: Icon(
                                            Icons.search_sharp,
                                            size: 20,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              //2
                              Container(
                                height: height,
                                width: width * 0.3333,
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: height * 0.12,
                                    ),
                                    Text(
                                      "Home /2023 Montrose Wine and Food \nFestival / Thursday Night Wine Tasting",
                                      style: TextStyle(
                                          fontSize: height * 0.025,
                                          color: Colors.grey),
                                    ),
                                    SizedBox(
                                      height: height * 0.015,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(right: width * 0.044),
                                      child: Text(
                                        "2023 Montrose Wine and Food \nFestival",
                                        style: TextStyle(
                                            fontSize: height * 0.026,
                                            color: Colors.blue[800]),
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.015,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(right: width * 0.009),
                                      child: Text(
                                        "Thursday Night Wine \nTasting",
                                        style: TextStyle(
                                            fontSize: height * 0.045,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(right: width * 0.175),
                                      child: Text(
                                        "125.00",
                                        style: TextStyle(
                                            fontSize: height * 0.043,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Text(
                                      "Tickets includes an event glass.       ",
                                      style: TextStyle(
                                        fontSize: height * 0.027,
                                      ),
                                    ),
                                    Divider(
                                      indent: 30,
                                      endIndent: 20,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(right: width * 0.039),
                                      child: Text(
                                        "SKU: 2023-BCBG-THUR-WT \n Category: 2023 Montrose Wine \n and Food Festival",
                                        style: TextStyle(
                                          fontSize: height * 0.025,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          //2
                        ],
                      ),
                    ),
                    //3
                    VerticalDivider(),
                    Container(
                      height: height,
                      width: width * 0.3,
                      color: Colors.white,
                      child: Container(
                        height: height,
                        width: width * 0.33333,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: height * 0.3),
                          child: Center(
                            child: Container(
                              height: height * 0.3,
                              width: width * 0.21,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage("images/er.png"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
