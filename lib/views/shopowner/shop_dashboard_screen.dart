import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerece/utils/theme_data.dart';
import 'package:ecommerece/views/shopowner/pages/shop_add_product_page.dart';
import 'package:ecommerece/views/shopowner/pages/shop_home_screen.dart';
import 'package:ecommerece/views/shopowner/pages/shope_setting_page.dart';
import 'package:ecommerece/views/shopowner/pages/store_category_page_page.dart';
import 'package:flutter/material.dart';

class ShopDashBoardScreen extends StatefulWidget {
  const ShopDashBoardScreen({super.key});

  @override
  State<ShopDashBoardScreen> createState() => _ShopDashBoardScreenState();
}

class _ShopDashBoardScreenState extends State<ShopDashBoardScreen> {
  int index = 0;
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black38,
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                height: height,
                width: width,
                child: PageView(
                  controller: controller,
                  onPageChanged: (value) {
                    setState(() {
                      index = value;
                    });
                  },
                  children: const [
                    ShopHomeScreen(),
                    
                    StoreCategoryPage(),
                    ShopSettingPage()
                  ],
                ),
              ),
            ),
            Container(
              height: height * 0.08,
              width: width,
              decoration: BoxDecoration(
                  color: MyThemeClass.primaryColor,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(15))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      controller.jumpToPage(0);
                    },
                    child: Icon(
                      Icons.home,
                      color: index == 0 ? Colors.white : Colors.black,
                      size: width * 0.07,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      controller.jumpToPage(1);
                    },
                    child: Icon(
                      Icons.add_box_outlined,
                      color: index == 1 ? Colors.white : Colors.black,
                      size: width * 0.07,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      controller.jumpToPage(2);
                    },
                    child: Icon(
                      Icons.account_tree_rounded,
                      size: width * 0.07,
                      color: index == 2 ? Colors.white : Colors.black,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      controller.jumpToPage(3);
                    },
                    child: Icon(
                      Icons.settings,
                      size: width * 0.07,
                      color: index == 3 ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
