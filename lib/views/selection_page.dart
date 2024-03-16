import 'package:ecommerece/utils/theme_data.dart';
import 'package:ecommerece/views/shopowner/shop_loginpage.dart';
import 'package:ecommerece/views/user/user_login_page.dart';
import 'package:flutter/material.dart';

class Selectionpage extends StatefulWidget {
  const Selectionpage({super.key});

  @override
  State<Selectionpage> createState() => _SelectionpageState();
}

class _SelectionpageState extends State<Selectionpage> {
  var height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
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
            ),
            SizedBox(
              height: height,
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: height * 0.3,
                    width: width * 0.8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Ecommerce',
                          style: TextStyle(
                              fontSize: width * 0.1,
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
                  ),
                  SizedBox(
                    height: height * 0.3,
                    width: width * 0.8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ShopLoginScreen(),
                                ));
                          },
                          child: Container(
                            height: height * 0.055,
                            width: width * 0.45,
                            decoration: BoxDecoration(
                                color: MyThemeClass.secoundryColor,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                                child: Text(
                              'Store',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.025,
                              ),
                            )),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => UserLoginScreen(),
                                ));
                          },
                          child: Container(
                            height: height * 0.055,
                            width: width * 0.45,
                            decoration: BoxDecoration(
                                color: MyThemeClass.secoundryColor,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                                child: Text(
                              'User',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.025,
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
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
