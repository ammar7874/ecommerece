import 'package:ecommerece/controllers/admin_controllers/admin_home_controller.dart';
import 'package:ecommerece/controllers/admin_controllers/admin_main_controller.dart';
import 'package:ecommerece/controllers/user_controllers/user_main_controller.dart';
import 'package:ecommerece/utils/theme_data.dart';
import 'package:ecommerece/views/selection_page.dart';
import 'package:ecommerece/views/shopowner/shop_dashboard_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var height, width;
  // FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  // Future userstatus() async {
  //   await firebaseFirestore
  //       .collection('users')
  //       .doc(StaticDate.uid)
  //       .get()
  //       .then((value) {
  //     StaticDate.usermodel = UserModel.fromMap(value.data()!);
  //   });
  // }

  // void getuserdata(v) async {
  //   await firebaseFirestore.collection('users').doc(v).get().then((value) {
  //     setState(
  //       () {
  //         if (value.data() == null) {
  //           AdminStaticVeriable.uid = v;
  //           Future.delayed(
  //             const Duration(seconds: 4),
  //             () async {
  //               await firebaseFirestore
  //                   .collection('Admins')
  //                   .doc(AdminStaticVeriable.uid)
  //                   .get()
  //                   .then((value) {
  //                 setState(() {
  //                   AdminStaticVeriable.adminModel =
  //                       AdminModel.fromMap(value.data()!);
  //                 });
  //               });
  //               Navigator.push(
  //                 context,
  //                 MaterialPageRoute(
  //                   builder: (context) => WebAdminHome(),
  //                 ),
  //               );
  //               print(" value of admin ${v}");
  //             },
  //           );
  //         } else {
  //           print(" value of user ${v}");
  //           StaticDate.uid = v;
  //           Future.delayed(
  //             const Duration(seconds: 4),
  //             () {
  //               userstatus();

  //               Navigator.push(
  //                 context,
  //                 MaterialPageRoute(builder: (context) => HomePage()),
  //               );
  //             },
  //           );
  //         }
  //       },
  //     );
  //   });
  // }

  // void getDataFromSF() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? v = prefs.getString('UserId');

  //   if (v == null) {
  //     Future.delayed(
  //       const Duration(seconds: 4),
  //       () {
  //         Navigator.push(
  //           context,
  //           MaterialPageRoute(
  //               builder: (context) =>
  //                   width > 600 ? WebAdminLogin() : MobileAdminLogin()),
  //         );
  //       },
  //     );
  //   } else {
  //     getuserdata(v);
  //   }
  // }

  @override
  void initState() {
    Get.put(AdminHomeController());
    Get.put(AdminMainController());
    Get.put(UserMainController());
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ShopDashBoardScreen(),
            ));
      },
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/splash.jpg'))),
              height: height,
              width: width,
            ),
            Container(
              height: height,
              width: width,
              color: MyThemeClass.primaryColor.withOpacity(0.8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ecommerce',
                    style: TextStyle(
                        fontSize: width * 0.15,
                        color: MyThemeClass.secoundryColor),
                  ),
                  Text(
                    'Ecommerce isn’t the cherry on the cake, it’s the new cake',
                    style: TextStyle(
                        fontSize: width * 0.025,
                        color: MyThemeClass.secoundryColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
