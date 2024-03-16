import 'package:ecommerece/utils/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopSettingPage extends StatefulWidget {
  const ShopSettingPage({super.key});

  @override
  State<ShopSettingPage> createState() => _ShopSettingPageState();
}

class _ShopSettingPageState extends State<ShopSettingPage> {
  var height, width;
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController storeNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black38,
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Container(
              height: height * 0.07,
              width: width * 0.8,
              alignment: Alignment.centerLeft,
              child: Text(
                "Profie Settings",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white),
              ),
            ),
            SizedBox(
              height: height * 0.4,
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.01),
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: height * 0.06,
                        width: width * 0.8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              controller: userNameController,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 11,
                                    color: MyThemeClass.primaryColor,
                                  ),
                              decoration: InputDecoration(
                                  hintText: "UserName",
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontSize: 11,
                                        color: MyThemeClass.primaryColor,
                                      ),
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.person,
                                    size: 15,
                                    color: MyThemeClass.primaryColor,
                                  ))),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.01),
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: height * 0.06,
                        width: width * 0.8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              controller: locationController,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 11,
                                    color: MyThemeClass.primaryColor,
                                  ),
                              decoration: InputDecoration(
                                  hintText: "Location",
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontSize: 11,
                                        color: MyThemeClass.primaryColor,
                                      ),
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.location_city,
                                    size: 15,
                                    color: MyThemeClass.primaryColor,
                                  ))),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.01),
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: height * 0.06,
                        width: width * 0.8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              controller: storeNameController,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 11,
                                    color: MyThemeClass.primaryColor,
                                  ),
                              decoration: InputDecoration(
                                  hintText: "Store Name",
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontSize: 11,
                                        color: MyThemeClass.primaryColor,
                                      ),
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.location_city,
                                    size: 15,
                                    color: MyThemeClass.primaryColor,
                                  ))),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.01),
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: height * 0.06,
                        width: width * 0.8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              controller: phoneNoController,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 11,
                                    color: MyThemeClass.primaryColor,
                                  ),
                              decoration: InputDecoration(
                                  hintText: "Number",
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontSize: 11,
                                        color: MyThemeClass.primaryColor,
                                      ),
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.phone,
                                    size: 15,
                                    color: MyThemeClass.primaryColor,
                                  ))),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.06,
                    width: width * 0.8,
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        // obj.updateProfile(
                        //     userNameController.text,
                        //     locationController.text,
                        //     phoneNoController.text,
                        //     context);
                      },
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          height: height * 0.06,
                          width: width * 0.5,
                          decoration: BoxDecoration(
                            color: MyThemeClass.primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Update Profile",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // GetBuilder<UserController>(initState: (state) {
            //   phoneNoController.text = UserController.to.model!.number!;
            //   userNameController.text = UserController.to.model!.name!;
            //   locationController.text = UserController.to.model!.location!;
            // }, builder: (obj) {
            //   return SizedBox(
            //     height: height * 0.3,
            //     width: width,
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //       children: [
            //         Padding(
            //           padding: EdgeInsets.only(top: height * 0.01),
            //           child: Card(
            //             elevation: 5,
            //             shape: RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(10)),
            //             child: Container(
            //               height: height * 0.06,
            //               width: width * 0.8,
            //               decoration: BoxDecoration(
            //                 color: Colors.white,
            //                 borderRadius: BorderRadius.circular(10),
            //               ),
            //               child: Padding(
            //                 padding: const EdgeInsets.all(8.0),
            //                 child: TextFormField(
            //                     controller: userNameController,
            //                     style: Theme.of(context)
            //                         .textTheme
            //                         .bodyLarge!
            //                         .copyWith(fontSize: 11, color: Colors.pink),
            //                     decoration: InputDecoration(
            //                         hintText: "UserName",
            //                         hintStyle: Theme.of(context)
            //                             .textTheme
            //                             .bodyLarge!
            //                             .copyWith(
            //                                 fontSize: 11, color: Colors.pink),
            //                         border: InputBorder.none,
            //                         prefixIcon: const Icon(
            //                           Icons.person,
            //                           size: 15,
            //                                            color: MyThemeClass.primaryColor,

            //                         ))),
            //               ),
            //             ),
            //           ),
            //         ),

            //         Padding(
            //           padding: EdgeInsets.only(top: height * 0.01),
            //           child: Card(
            //             elevation: 5,
            //             shape: RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(10)),
            //             child: Container(
            //               height: height * 0.06,
            //               width: width * 0.8,
            //               decoration: BoxDecoration(
            //                 color: Colors.white,
            //                 borderRadius: BorderRadius.circular(10),
            //               ),
            //               child: Padding(
            //                 padding: const EdgeInsets.all(8.0),
            //                 child: TextFormField(
            //                     controller: locationController,
            //                     style: Theme.of(context)
            //                         .textTheme
            //                         .bodyLarge!
            //                         .copyWith(fontSize: 11, color: Colors.pink),
            //                     decoration: InputDecoration(
            //                         hintText: "Location",
            //                         hintStyle: Theme.of(context)
            //                             .textTheme
            //                             .bodyLarge!
            //                             .copyWith(
            //                                 fontSize: 11, color: Colors.pink),
            //                         border: InputBorder.none,
            //                         prefixIcon: const Icon(
            //                           Icons.location_city,
            //                           size: 15,
            //                                            color: MyThemeClass.primaryColor,

            //                         ))),
            //               ),
            //             ),
            //           ),
            //         ),
            //         Padding(
            //           padding: EdgeInsets.only(top: height * 0.01),
            //           child: Card(
            //             elevation: 5,
            //             shape: RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(10)),
            //             child: Container(
            //               height: height * 0.06,
            //               width: width * 0.8,
            //               decoration: BoxDecoration(
            //                 color: Colors.white,
            //                 borderRadius: BorderRadius.circular(10),
            //               ),
            //               child: Padding(
            //                 padding: const EdgeInsets.all(8.0),
            //                 child: TextFormField(
            //                     controller: phoneNoController,
            //                     style: Theme.of(context)
            //                         .textTheme
            //                         .bodyLarge!
            //                         .copyWith(fontSize: 11, color: Colors.pink),
            //                     decoration: InputDecoration(
            //                         hintText: "Number",
            //                         hintStyle: Theme.of(context)
            //                             .textTheme
            //                             .bodyLarge!
            //                             .copyWith(
            //                                 fontSize: 11, color: Colors.pink),
            //                         border: InputBorder.none,
            //                         prefixIcon: const Icon(
            //                           Icons.phone,
            //                           size: 15,
            //                                            color: MyThemeClass.primaryColor,

            //                         ))),
            //               ),
            //             ),
            //           ),
            //         ),

            //         Container(
            //           height: height * 0.06,
            //           width: width * 0.8,
            //           alignment: Alignment.centerRight,
            //           child: InkWell(
            //             onTap: () {
            //               obj.updateProfile(
            //                   userNameController.text,
            //                   locationController.text,
            //                   phoneNoController.text,
            //                   context);
            //             },
            //             child: Card(
            //               elevation: 10,
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(10)),
            //               child: Container(
            //                 height: height * 0.06,
            //                 width: width * 0.5,
            //                 decoration: BoxDecoration(
            //                                    color: MyThemeClass.primaryColor,

            //                   borderRadius: BorderRadius.circular(10),
            //                 ),
            //                 child: Center(
            //                   child: Text(
            //                     "Update Profile",
            //                     style: Theme.of(context)
            //                         .textTheme
            //                         .bodyLarge!
            //                         .copyWith(
            //                             fontSize: 15, color: Colors.white),
            //                   ),
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //   );
            // }),
            Container(
              height: height * 0.07,
              width: width * 0.8,
              alignment: Alignment.centerLeft,
              child: Text(
                "Password Settings",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.01),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: height * 0.06,
                  width: width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        controller: passwordController,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 11,
                              color: MyThemeClass.primaryColor,
                            ),
                        decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontSize: 11,
                                      color: MyThemeClass.primaryColor,
                                    ),
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.lock,
                              size: 15,
                              color: MyThemeClass.primaryColor,
                            ))),
                  ),
                ),
              ),
            ),
            Container(
              height: height * 0.06,
              width: width * 0.8,
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {
                  // UserController.to
                  //     .updatePassword(passwordController.text, context);
                },
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: height * 0.06,
                    width: width * 0.5,
                    decoration: BoxDecoration(
                      color: MyThemeClass.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Update Password",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: height * 0.1),
              child: InkWell(
                onTap: () {
                  //  MyFlushBar.showSimpleFlushBar('Logout Successfully',
                  //           context, Colors.green, Colors.white);
                  //       Future.delayed(const Duration(seconds: 3), () {
                  //         Navigator.of(context).pushAndRemoveUntil(
                  //             MaterialPageRoute(
                  //                 builder: (context) => UserLoginPage()),
                  //             (Route<dynamic> route) => false);
                  //       });
                },
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: height * 0.06,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                      color: MyThemeClass.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Logout",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
