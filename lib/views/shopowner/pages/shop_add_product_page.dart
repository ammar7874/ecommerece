import 'package:dotted_border/dotted_border.dart';
import 'package:ecommerece/utils/theme_data.dart';
import 'package:flutter/material.dart';

class StoreAddProductPage extends StatefulWidget {
  const StoreAddProductPage({super.key});

  @override
  State<StoreAddProductPage> createState() => _StoreAddProductPageState();
}

class _StoreAddProductPageState extends State<StoreAddProductPage> {
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
            SizedBox(
              height: height * 0.05,
            ),
            Container(
              height: height * 0.07,
              width: width * 0.8,
              alignment: Alignment.center,
              child: Text(
                "Store Product",
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
                        //controller: userNameController,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 11,
                              color: MyThemeClass.primaryColor,
                            ),
                        decoration: InputDecoration(
                            hintText: "Product Name",
                            hintStyle:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontSize: 11,
                                      color: MyThemeClass.primaryColor,
                                    ),
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.account_tree_rounded,
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
                        //controller: userNameController,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 11,
                              color: MyThemeClass.primaryColor,
                            ),
                        decoration: InputDecoration(
                            hintText: "Product Category",
                            hintStyle:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontSize: 11,
                                      color: MyThemeClass.primaryColor,
                                    ),
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.account_tree_rounded,
                              size: 15,
                              color: MyThemeClass.primaryColor,
                            ))),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.07,
              width: width * 0.8,
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: height,
                        width: width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              //controller: userNameController,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 11,
                                    color: MyThemeClass.primaryColor,
                                  ),
                              decoration: InputDecoration(
                                  hintText: "Product Price",
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontSize: 11,
                                        color: MyThemeClass.primaryColor,
                                      ),
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.account_tree_rounded,
                                    size: 15,
                                    color: MyThemeClass.primaryColor,
                                  ))),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Expanded(
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: height,
                        width: width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              //controller: userNameController,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 11,
                                    color: MyThemeClass.primaryColor,
                                  ),
                              decoration: InputDecoration(
                                  hintText: "Product Discount",
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontSize: 11,
                                        color: MyThemeClass.primaryColor,
                                      ),
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.account_tree_rounded,
                                    size: 15,
                                    color: MyThemeClass.primaryColor,
                                  ))),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.01),
              child: SizedBox(
                  height: height * 0.1,
                  width: width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      DottedBorder(
                        color: Colors.white,
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(12),
                        padding: const EdgeInsets.all(6),
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          child: SizedBox(
                            height: height,
                            width: width * 0.15,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.add_a_photo,
                                  size: 15,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Add Image",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                          fontSize: width * 0.025,
                                          color: Colors.white),
                                ),
                              ],
                            ),
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
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  height: height,
                                  width: width * 0.15,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.01),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                    height: height * 0.12,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.add_a_photo,
                          color: Colors.black38,
                        ),
                        Text(
                          "Choose Cover Image",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(color: Colors.black38),
                        ),
                      ],
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.01),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: height * 0.12,
                  width: width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                        //controller: userNameController,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 11,
                              color: MyThemeClass.primaryColor,
                            ),
                        maxLines: 3,
                        decoration: InputDecoration(
                            hintText: "Product Discription",
                            hintStyle:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontSize: 11,
                                      color: MyThemeClass.primaryColor,
                                    ),
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.announcement_sharp,
                              size: 15,
                              color: MyThemeClass.primaryColor,
                            ))),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            InkWell(
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
                      "Add Product",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 15, color: Colors.white),
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
