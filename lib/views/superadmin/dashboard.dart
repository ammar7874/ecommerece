import 'package:ecommerece/controllers/admin_controllers/admin_home_controller.dart';
import 'package:ecommerece/utils/theme_data.dart';
import 'package:ecommerece/views/superadmin/pages/admin_home_page.dart';
import 'package:ecommerece/views/superadmin/pages/admin_order_page.dart';
import 'package:ecommerece/views/superadmin/pages/admin_products_page.dart';
import 'package:ecommerece/views/superadmin/pages/admin_shop_page.dart';
import 'package:ecommerece/views/superadmin/pages/admin_user_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminDashBoardScreen extends StatefulWidget {
  const AdminDashBoardScreen({super.key});

  @override
  State<AdminDashBoardScreen> createState() => _AdminDashBoardScreenState();
}

class _AdminDashBoardScreenState extends State<AdminDashBoardScreen> {
  @override
  void initState() {
    super.initState();
  }

  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return GetBuilder<AdminHomeController>(builder: (obj) {
      return Scaffold(
        backgroundColor: MyThemeClass.primaryColor,
        body: SizedBox(
          height: height,
          width: width,
          child: Row(
            children: [
              Container(
                height: height,
                width: width * 0.15,
                decoration: const BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(15),
                    )),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: SizedBox(
                        height: height * 0.1,
                        width: width * 0.16,
                        child: Center(
                          child: Text(
                            "Dashboard ",
                            style: TextStyle(
                                fontSize: width * 0.015, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    InkWell(
                      onTap: () {
                        obj.changepageIndex(0);
                      },
                      child: Container(
                        height: height * 0.065,
                        width: width * 0.16,
                        decoration: obj.pageindex == 0
                            ? BoxDecoration(
                                color: MyThemeClass.primaryColor,
                                borderRadius: const BorderRadius.horizontal(
                                    left: Radius.circular(50)))
                            : null,
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.home,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                "Dashboard",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.012),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    InkWell(
                      onTap: () {
                        obj.changepageIndex(1);
                      },
                      child: Container(
                        height: height * 0.065,
                        width: width * 0.16,
                        decoration: obj.pageindex == 1
                            ? BoxDecoration(
                                color: MyThemeClass.primaryColor,
                                borderRadius: const BorderRadius.horizontal(
                                    left: Radius.circular(50)))
                            : null,
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.add_business,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                "Shops",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.012),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    InkWell(
                      onTap: () {
                        obj.changepageIndex(2);
                      },
                      child: Container(
                        height: height * 0.065,
                        width: width * 0.16,
                        decoration: obj.pageindex == 2
                            ? BoxDecoration(
                                color: MyThemeClass.primaryColor,
                                borderRadius: const BorderRadius.horizontal(
                                    left: Radius.circular(50)))
                            : null,
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.person_4_sharp,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                "Users",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.012),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    InkWell(
                      onTap: () {
                        obj.changepageIndex(3);
                      },
                      child: Container(
                        height: height * 0.065,
                        width: width * 0.16,
                        decoration: obj.pageindex == 3
                            ? BoxDecoration(
                                color: MyThemeClass.primaryColor,
                                borderRadius: const BorderRadius.horizontal(
                                    left: Radius.circular(50)))
                            : null,
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.border_style_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                "Products",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.012),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    InkWell(
                      onTap: () {
                        obj.changepageIndex(4);
                      },
                      child: Container(
                        height: height * 0.065,
                        width: width * 0.16,
                        decoration: obj.pageindex == 4
                            ? BoxDecoration(
                                color: MyThemeClass.primaryColor,
                                borderRadius: const BorderRadius.horizontal(
                                    left: Radius.circular(50)))
                            : null,
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.shopping_bag_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                "Orders",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.012),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: height * 0.065,
                        width: width * 0.16,
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.logout,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                "Logout",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.012),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.1,
                    ),
                    Container(
                      height: height * 0.25,
                      width: width * 0.13,
                      decoration: BoxDecoration(
                          color: MyThemeClass.primaryColor,
                          borderRadius: BorderRadius.circular(10)),
                    )
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: height,
                  width: width,
                  child: obj.pageindex == 0
                      ? const AdminHomePage()
                      : obj.pageindex == 1
                          ? const AdminShopPage()
                          : obj.pageindex == 2
                              ? const AdminUsersPage()
                              : obj.pageindex == 3
                                  ? const AdminProductPage()
                                  : const AdminOrderdPage(),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
