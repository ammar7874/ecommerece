import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerece/controllers/admin_controllers/admin_main_controller.dart';
import 'package:ecommerece/models/admin_models/shop_model.dart';
import 'package:ecommerece/utils/flushbar.dart';
import 'package:ecommerece/utils/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminShopPage extends StatefulWidget {
  const AdminShopPage({super.key});

  @override
  State<AdminShopPage> createState() => _AdminShopPageState();
}

class _AdminShopPageState extends State<AdminShopPage> {
  var height, width;
  int index = 1;

  final nameController = TextEditingController();
  final gmailController = TextEditingController();
  final cityController = TextEditingController();
  final addressController = TextEditingController();
  final storeController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    final Name = ['Ronald Richards', 'Wade Warren', 'Arlene McCoy'];
    final Status = [
      'Admin',
      'Admin',
      'Admin',
    ];
    final Images = [
      CircleAvatar(backgroundImage: AssetImage("images/gojoo.jpg")),
      CircleAvatar(backgroundImage: AssetImage("images/gojoo.jpg")),
      CircleAvatar(backgroundImage: AssetImage("images/gojoo.jpg"))
    ];
    final Store = ['Times Store', 'Imtiaz Store', 'Shopping Store'];
    final Gmail = [
      'hamzanazir088@gmail.com',
      'samichandio@gmail.com',
      'mohsinfida9065@gmail.com'
    ];

    return Scaffold(
      backgroundColor: MyThemeClass.primaryColor,
      body: GetBuilder<AdminMainController>(builder: (obj) {
        return SizedBox(
          height: height,
          width: width * 0.84,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: height * 0.09,
                  width: width,
                  alignment: Alignment.center,
                  child: Text(
                    "Add Shops",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: width * 0.018,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
                SizedBox(
                  height: height * 0.4,
                  width: width * 0.85,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        obj.imageUrl != null
                            ? Container(
                                height: height * 0.25,
                                width: width * 0.2,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(obj.imageUrl!)),
                                    color: Colors.black38,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.grey)),
                              )
                            : InkWell(
                                onTap: () {
                                  obj.getFromGallery(context).then((value) {
                                    obj.uploadImage(value);
                                  });
                                },
                                child: Container(
                                  height: height * 0.25,
                                  width: width * 0.2,
                                  decoration: BoxDecoration(
                                      color: Colors.black38,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: Colors.grey)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.camera_alt,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      const Text(
                                        "Add Image",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: height,
                            width: width,
                            child: Column(
                              children: [
                                Container(
                                  height: height * 0.07,
                                  width: width * 0.25,
                                  decoration: BoxDecoration(
                                      color: Colors.black38,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      controller: nameController,
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          labelText: 'Name',
                                          hintText: 'Berlin',
                                          hintStyle:
                                              TextStyle(color: Colors.white)),
                                    ),
                                  ),
                                ),
                                SizedBox(height: height * 0.03),
                                Container(
                                  height: height * 0.07,
                                  width: width * 0.25,
                                  decoration: BoxDecoration(
                                      color: Colors.black38,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      controller: cityController,
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          labelText: 'City',
                                          hintText: 'Berlin, ',
                                          hintStyle:
                                              TextStyle(color: Colors.white)),
                                    ),
                                  ),
                                ),
                                SizedBox(height: height * 0.03),
                                Container(
                                  height: height * 0.07,
                                  width: width * 0.25,
                                  decoration: BoxDecoration(
                                      color: Colors.black38,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      controller: addressController,
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          labelText: 'Address',
                                          hintText: 'Berlin, Germany',
                                          hintStyle:
                                              TextStyle(color: Colors.white)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: height * 0.45,
                            width: width * 0.28,
                            child: Column(
                              children: [
                                Container(
                                  height: height * 0.07,
                                  width: width * 0.25,
                                  decoration: BoxDecoration(
                                      color: Colors.black38,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      controller: gmailController,
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          labelText: 'Gmail',
                                          hintText: 'Berlin319@gmail.com',
                                          hintStyle:
                                              TextStyle(color: Colors.white)),
                                    ),
                                  ),
                                ),
                                SizedBox(height: height * 0.03),
                                Container(
                                  height: height * 0.07,
                                  width: width * 0.25,
                                  decoration: BoxDecoration(
                                      color: Colors.black38,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      controller: storeController,
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          labelText: 'Store Name',
                                          hintText: 'Berlin Jewellery',
                                          hintStyle:
                                              TextStyle(color: Colors.white)),
                                    ),
                                  ),
                                ),
                                SizedBox(height: height * 0.03),
                                Container(
                                  height: height * 0.07,
                                  width: width * 0.25,
                                  decoration: BoxDecoration(
                                      color: Colors.black38,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      controller: passwordController,
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          labelText: 'Password',
                                          hintText: 'xxxxxxxxx',
                                          hintStyle:
                                              TextStyle(color: Colors.white)),
                                    ),
                                  ),
                                ),
                                SizedBox(height: height * 0.03),
                                InkWell(
                                  onTap: () {
                                    if (nameController.text.isEmpty ||
                                        gmailController.text.isEmpty ||
                                        passwordController.text.isEmpty ||
                                        cityController.text.isEmpty ||
                                        addressController.text.isEmpty ||
                                        storeController.text.isEmpty ||
                                        obj.imageUrl == null) {
                                      MyFlushBar.showSimpleFlushBar(
                                          "Fill All The Fields",
                                          context,
                                          Colors.red,
                                          Colors.white);
                                    } else {
                                      obj.addShop(
                                          context,
                                          nameController.text,
                                          gmailController.text,
                                          addressController.text,
                                          passwordController.text,
                                          addressController.text,
                                          cityController.text);
                                      nameController.clear();
                                      gmailController.clear();
                                      addressController.clear();
                                      cityController.clear();
                                      storeController.clear();
                                      passwordController.clear();
                                    }
                                  },
                                  child: Container(
                                      height: height * 0.07,
                                      width: width * 0.2,
                                      decoration: BoxDecoration(
                                          color: Colors.black38,
                                          border:
                                              Border.all(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Add Store",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: width * 0.01),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  "All Shops",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.018,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Expanded(
                  child: StreamBuilder<QuerySnapshot>(
                      stream: FirebaseFirestore.instance
                          .collection('Stores')
                          .snapshots(),
                      builder:
                          (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                        return Container(
                          height: height * 0.6,
                          width: width * 0.85,
                          color: Colors.black38,
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.07,
                                width: width,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: height,
                                        width: width * 0.05,
                                        child: Center(
                                          child: Text(
                                            'SL',
                                            style: TextStyle(
                                                fontSize: width * 0.009,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          height: height,
                                          width: width,
                                          child: Center(
                                            child: Text(
                                              'IMAGE',
                                              style: TextStyle(
                                                  fontSize: width * 0.009,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          height: height,
                                          width: width,
                                          child: Center(
                                            child: Text(
                                              'NAME',
                                              style: TextStyle(
                                                  fontSize: width * 0.009,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          height: height,
                                          width: width,
                                          child: Center(
                                            child: Text(
                                              'STATUS',
                                              style: TextStyle(
                                                  fontSize: width * 0.009,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          height: height,
                                          width: width,
                                          child: Center(
                                            child: Text(
                                              'STORE',
                                              style: TextStyle(
                                                  fontSize: width * 0.009,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          height: height,
                                          width: width,
                                          child: Center(
                                            child: Text(
                                              'GMAIL',
                                              style: TextStyle(
                                                  fontSize: width * 0.009,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          height: height,
                                          width: width,
                                          child: Center(
                                            child: Text(
                                              'ACTION',
                                              style: TextStyle(
                                                  fontSize: width * 0.009,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: height,
                                  width: width,
                                  child: !snapshot.hasData
                                      ? const Center(
                                          child: Text("No Record Found"))
                                      : ListView.builder(
                                          itemCount: snapshot.data!.docs.length,
                                          itemBuilder: (context, index) {
                                            ShopModel model = ShopModel.fromMap(
                                                snapshot.data!.docs[index]
                                                        .data()
                                                    as Map<String, dynamic>);
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                height: height * 0.07,
                                                width: width,
                                                color:
                                                    MyThemeClass.primaryColor,
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      height: height,
                                                      width: width * 0.05,
                                                      child: Center(
                                                        child: Text(
                                                          "${index + 1}",
                                                          style: TextStyle(
                                                              fontSize:
                                                                  width * 0.009,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: SizedBox(
                                                        height: height,
                                                        width: width,
                                                        child: Center(
                                                          child: Container(
                                                            height: height,
                                                            width: width,
                                                            decoration: BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: Colors
                                                                    .black38,
                                                                image: DecorationImage(
                                                                    fit: BoxFit
                                                                        .cover,
                                                                    image: NetworkImage(
                                                                        model
                                                                            .image!))),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: SizedBox(
                                                        height: height,
                                                        width: width,
                                                        child: Center(
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
                                                    ),
                                                    Expanded(
                                                      child: SizedBox(
                                                        height: height,
                                                        width: width,
                                                        child: Center(
                                                          child: Text(
                                                            model.status == 0
                                                                ? 'Active'
                                                                : "Block",
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
                                                    ),
                                                    Expanded(
                                                      child: SizedBox(
                                                        height: height,
                                                        width: width,
                                                        child: Center(
                                                          child: Text(
                                                            model.storename!,
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
                                                    ),
                                                    Expanded(
                                                      child: SizedBox(
                                                        height: height,
                                                        width: width,
                                                        child: Center(
                                                          child: Text(
                                                            model.gmail!,
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
                                                    ),
                                                    Expanded(
                                                      child: SizedBox(
                                                        height: height,
                                                        width: width,
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: [
                                                              IconButton(
                                                                onPressed:
                                                                    () {},
                                                                icon: const Icon(
                                                                    Icons.edit,
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                              IconButton(
                                                                onPressed:
                                                                    () {},
                                                                icon: const Icon(
                                                                    Icons
                                                                        .delete,
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                              IconButton(
                                                                onPressed:
                                                                    () {},
                                                                icon: const Icon(
                                                                    Icons.block,
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                            ]),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
