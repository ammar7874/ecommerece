import 'package:ecommerece/utils/theme_data.dart';
import 'package:flutter/material.dart';

class StoreCategoryPage extends StatefulWidget {
  const StoreCategoryPage({super.key});

  @override
  State<StoreCategoryPage> createState() => _StoreCategoryPageState();
}

class _StoreCategoryPageState extends State<StoreCategoryPage> {
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
                "Store Category",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.15),
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
                          "Choose Category Image",
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
                            hintText: "Category Name",
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
                            hintText: "Category Discription",
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
                      "Add Category",
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
